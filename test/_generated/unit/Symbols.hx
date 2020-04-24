package unit;
@:jsRequire("./unit/symbols") extern class Symbols {
	static function ClassValueModule(arg:Float):Any;
	@:overload(function():Float { })
	static function CallableInterface(overloadParam:Float):Float;
	static function FunctionValueModule():Float;
	/**
		See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#23-declarations
		
		List of possible combinations
		https://www.typescriptlang.org/docs/handbook/declaration-merging.html#basic-concepts
		
		The 3 kinds of declarations possible, all using the same name
	**/
	static var ValueTypedefNamespace : String;
}