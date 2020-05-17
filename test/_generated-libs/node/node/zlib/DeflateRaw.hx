package node.zlib;

typedef DeflateRaw = {
	function _transform(chunk:Dynamic, encoding:String, callback:node.stream.TransformCallback):Void;
	function _flush(callback:node.stream.TransformCallback):Void;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Dynamic, encoding:String, callback:ts.AnyOf2<() -> Void, (error:ts.lib.Error) -> Void>):Void;
	@:optional
	function _writev(chunks:Array<{ var chunk : Dynamic; var encoding : String; }>, callback:ts.AnyOf2<() -> Void, (error:ts.lib.Error) -> Void>):Void;
	function _destroy(error:Null<ts.lib.Error>, callback:(error:Null<ts.lib.Error>) -> Void):Void;
	function _final(callback:ts.AnyOf2<() -> Void, (error:ts.lib.Error) -> Void>):Void;
	@:overload(function(chunk:Dynamic, ?cb:(error:Null<ts.lib.Error>) -> Void):Bool { })
	function write(chunk:Dynamic, ?encoding:String, ?cb:(error:Null<ts.lib.Error>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):DeflateRaw;
	@:overload(function(chunk:Dynamic, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Dynamic, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	var readable : Bool;
	final readableHighWaterMark : Float;
	final readableLength : Float;
	function _read(size:Float):Void;
	function read(?size:Float):Dynamic;
	function setEncoding(encoding:String):DeflateRaw;
	function pause():DeflateRaw;
	function resume():DeflateRaw;
	function isPaused():Bool;
	function unpipe(?destination:global.nodejs.WritableStream):DeflateRaw;
	function unshift(chunk:Dynamic):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):DeflateRaw;
	function push(chunk:Dynamic, ?encoding:String):Bool;
	function destroy(?error:ts.lib.Error):Void;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DeflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DeflateRaw { })
	function addListener(event:String, listener:() -> Void):DeflateRaw;
	@:overload(function(event:String, chunk:Dynamic):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:ts.lib.Error):Bool { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DeflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DeflateRaw { })
	function on(event:String, listener:() -> Void):DeflateRaw;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DeflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DeflateRaw { })
	function once(event:String, listener:() -> Void):DeflateRaw;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DeflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DeflateRaw { })
	function prependListener(event:String, listener:() -> Void):DeflateRaw;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DeflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DeflateRaw { })
	function prependOnceListener(event:String, listener:() -> Void):DeflateRaw;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:() -> Void):DeflateRaw { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):DeflateRaw { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DeflateRaw { })
	function removeListener(event:String, listener:() -> Void):DeflateRaw;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DeflateRaw;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):DeflateRaw;
	function setMaxListeners(n:Float):DeflateRaw;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
	final bytesRead : Float;
	final bytesWritten : Float;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	function close(?callback:() -> Void):Void;
	function flush(?kind:ts.AnyOf2<Float, () -> Void>, ?callback:() -> Void):Void;
	function reset():Void;
	function params(level:Float, strategy:Float, callback:() -> Void):Void;
};