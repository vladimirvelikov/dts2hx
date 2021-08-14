import typescript.ts.Symbol;
import haxe.macro.Expr;

using StringTools;
using tool.HaxeTools;
using tool.SymbolAccessTools;

@:access(ConverterContext)
class SupportTypes {

	/**
		Haxe doesn't support tuple-types so we generate a support type as required
	**/
	static public function getTupleType(ctx: ConverterContext, elementTypes: Array<ComplexType>): ComplexType {
		if (elementTypes.length == 0) {
			return macro :std.Array<Any>;
		}

		// var baseType = HaxeTools.commonType(elementTypes);

		var typePath = {
			pack: ['ts'],
			name: 'Tuple${elementTypes.length}',
			params: elementTypes.map(t -> TPType(t))
		};

		var existingModule = ctx.getGeneratedModule(typePath);

		if (existingModule == null) {
			// generate fields
			var fields = new Array<Field>();

			for (i in 0...elementTypes.length) {
				var name = 'element$i';
				var type = TPath({
					name: 'T$i',
					pack: [],
				});
				var get = 'get_$name';
				var set = 'set_$name';
				var indexExpr = HaxeTools.toIntExpr(i);
				fields = fields.concat((macro class {
					public var $name(get, set): $type;
					inline function $get(): $type return cast this[$indexExpr];
					inline function $set(v: $type): $type return cast this[$indexExpr] = cast v;
				}).fields);
			}

			// add new(...)
			var newParams = [for (i in 0...elementTypes.length) 'element$i:T$i'].join(', ');
			var elementInitializerArray = [for (i in 0...elementTypes.length) macro $i{'element$i'}];
			fields.unshift((macro class {
				public inline function new($newParams) {
					this = $a{elementInitializerArray};
				}
			}).fields[0]);

			var abstractType = macro :std.Array<Any>;

			var tupleTypeDefinition: HaxeModule = {
				pack: typePath.pack,
				name: typePath.name,
				kind: TDAbstract(abstractType, [abstractType], [abstractType]),
				params: [for (i in 0...elementTypes.length) { name: 'T$i', }],
				fields: fields,
				isExtern: true,
				doc: 'Tuple type implementation generated by dts2hx',
				meta: [{name: ':forward', pos: null}, {name: ':forwardStatics', pos: null}],
				pos: null,
				tsSymbol: null,
				tsSymbolAccess: null,
			}

			ctx.saveHaxeModule(tupleTypeDefinition);
		}

		return TPath(typePath);
	}

	static public function getUnionType(ctx: ConverterContext, types: Array<ComplexType>): ComplexType {
		if (types.length == 0) {
			Log.error('getSupportUnionType(): no types provided');
			debug();
			return macro :Any;
		}

		// no need for a union
		if (types.length == 1) {
			return types[0];
		}

		// merge with sub-unions
		types = Lambda.flatMap(types, t -> switch t {
			case TPath({pack: ['ts'], name: name, params: params}) if (name.startsWith('AnyOf')):
				params.map(p -> switch p {
					case TPType(t): t;
					case TPExpr(e): throw 'Expected ComplexType but got Expr';
				});
			default: [t];
		});

		var typePath = {
			pack: ['ts'],
			name: 'AnyOf${types.length}',
			params: types.map(t -> TPType(t))
		};

		var existingModule = ctx.getGeneratedModule(typePath);

		if (existingModule == null) {
			var abstractType = macro :Dynamic;
			var typeParams: Array<ComplexType> = [
				for (i in 0...types.length) TPath({
					pack: [],
					name: 'T$i'
				})
			];

			var anyOfTypeDefinition: HaxeModule = {
				pack: typePath.pack,
				name: typePath.name,
				kind: TDAbstract(abstractType, typeParams, typeParams),
				params: [for (i in 0...types.length) { name: 'T$i', }],
				fields: Lambda.flatten([for (i in 0...types.length) {
					var varName = 'asType$i';
					var getterName = 'get_asType$i';
					var typeParam = typeParams[i];
					(macro class {
						var $varName(get, never): $typeParam;
						private	 inline function $getterName(): $typeParam return this;
					}).fields;
				}]),
				isExtern: true,
				doc: 'AnyOf implementation generated by dts2hx',
				meta: [{name: ':transitive', pos: null}], // same as EitherType
				pos: null,
				tsSymbol: null,
				tsSymbolAccess: null,
			}

			ctx.saveHaxeModule(anyOfTypeDefinition);
		}

		return TPath(typePath);
	}

	static public function getUndefinedType(ctx: ConverterContext): ComplexType {
		var typePath = {
			pack: ['ts'],
			name: 'Undefined',
		};

		var existingModule = ctx.getGeneratedModule(typePath);
		if (existingModule == null) {
			// create Nothing type
			var nothingDefinition: HaxeModule = {
				pack: typePath.pack,
				name: typePath.name,
				doc: '`Undefined` corresponds to `void` in TypeScript; in haxe `Void` cannot be used as a field type (only function return) so we must use `Any` instead. This alias serves as documentation that the type is `void` and therefore value is `undefined`',
				kind: TDAlias(macro : Any),
				pos: null,
				fields: [],
				tsSymbol: null,
				tsSymbolAccess: null,
			}

			ctx.saveHaxeModule(nothingDefinition);
		}

		return TPath(typePath);
	}

	static public function getGlobalModuleForFieldSymbol(ctx: ConverterContext, symbol: Symbol, access: SymbolAccess): HaxeModule {
		var typePath = ctx.haxeTypePathMap.getGlobalModuleTypePath(symbol, access);
		var existingModule = ctx.getGeneratedModule({name: typePath.name, pack: typePath.pack});
		if (existingModule != null) {
			return existingModule;
		}
		var hxModule = {
			pack: typePath.pack,
			name: typePath.name,
			fields: [],
			kind: TDClass(null, [], false, false),
			params: [],
			isExtern: true,
			doc: '',
			meta: [SymbolAccess.Global([]).toAccessMetadata()],
			pos: null,
			tsSymbol: symbol,
			tsSymbolAccess: access,
		}
		ctx.saveHaxeModule(hxModule);
		return hxModule;
	}

}