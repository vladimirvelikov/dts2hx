package node.stream;
@:jsRequire("stream", "Transform") extern class Transform {
	function new(?opts:TransformOptions);
	function _transform(chunk:Any, encoding:String, callback:(?error:ts.lib.IError, ?data:Any) -> Void):Void;
	function _flush(callback:(?error:ts.lib.IError, ?data:Any) -> Void):Void;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:ts.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:ts.lib.IError) -> Void):Void;
	function _destroy(error:Null<ts.lib.IError>, callback:(error:Null<ts.lib.IError>) -> Void):Void;
	function _final(callback:(?error:ts.lib.IError) -> Void):Void;
	@:overload(function(chunk:Any, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool { })
	function write(chunk:Any, ?encoding:String, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):Transform;
	@:overload(function(chunk:Any, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Any, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Any;
	function setEncoding(encoding:String):Transform;
	function pause():Transform;
	function resume():Transform;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):Transform;
	function unshift(chunk:Any):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Transform;
	function push(chunk:Any, ?encoding:String):Bool;
	function destroy(?error:ts.lib.IError):Void;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Transform { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Transform { })
	function addListener(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, chunk:Any):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:ts.lib.IError):Bool { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Transform { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Transform { })
	function on(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Transform { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Transform { })
	function once(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Transform { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Transform { })
	function prependListener(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Transform { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Transform { })
	function prependOnceListener(event:String, listener:() -> Void):Transform;
	@:overload(function(event:String, listener:(chunk:Any) -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:() -> Void):Transform { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Transform { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Transform { })
	function removeListener(event:String, listener:() -> Void):Transform;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Transform;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Transform;
	function setMaxListeners(n:Float):Transform;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}