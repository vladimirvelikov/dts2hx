package node.http;
@:jsRequire("http", "ServerResponse") extern class ServerResponse {
	function new(req:IncomingMessage);
	var statusCode : Float;
	var statusMessage : String;
	function assignSocket(socket:node.net.Socket):Void;
	function detachSocket(socket:node.net.Socket):Void;
	function writeContinue(?callback:() -> Void):Void;
	@:overload(function(statusCode:Float, ?headers:OutgoingHttpHeaders):ServerResponse { })
	function writeHead(statusCode:Float, ?reasonPhrase:String, ?headers:OutgoingHttpHeaders):ServerResponse;
	var upgrading : Bool;
	var chunkedEncoding : Bool;
	var shouldKeepAlive : Bool;
	var useChunkedEncodingByDefault : Bool;
	var sendDate : Bool;
	var finished : Bool;
	var headersSent : Bool;
	var connection : node.net.Socket;
	function setTimeout(msecs:Float, ?callback:() -> Void):ServerResponse;
	function setHeader(name:String, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, std.Array<String>>>):Void;
	function getHeader(name:String):Null<haxe.extern.EitherType<String, haxe.extern.EitherType<Float, std.Array<String>>>>;
	function getHeaders():OutgoingHttpHeaders;
	function getHeaderNames():std.Array<String>;
	function hasHeader(name:String):Bool;
	function removeHeader(name:String):Void;
	function addTrailers(headers:haxe.extern.EitherType<OutgoingHttpHeaders, std.Array<ts.lib.Tuple2<String, String>>>):Void;
	function flushHeaders():Void;
	var writable : Bool;
	final writableHighWaterMark : Float;
	final writableLength : Float;
	function _write(chunk:Any, encoding:String, callback:(?error:ts.lib.IError) -> Void):Void;
	@:optional
	function _writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:ts.lib.IError) -> Void):Void;
	function _destroy(error:Null<ts.lib.IError>, callback:(?error:ts.lib.IError) -> Void):Void;
	function _final(callback:(?error:ts.lib.IError) -> Void):Void;
	@:overload(function(chunk:Any, ?encoding:String, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool { })
	function write(chunk:Any, ?cb:(error:Null<ts.lib.IError>) -> Void):Bool;
	function setDefaultEncoding(encoding:String):ServerResponse;
	@:overload(function(chunk:Any, ?cb:() -> Void):Void { })
	@:overload(function(chunk:Any, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
	function cork():Void;
	function uncork():Void;
	function destroy(?error:ts.lib.IError):Void;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. drain
		3. error
		4. finish
		5. pipe
		6. unpipe
	**/
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):ServerResponse { })
	function addListener(event:String, listener:() -> Void):ServerResponse;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:ts.lib.IError):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:String, src:node.stream.Readable):Bool { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool { })
	function emit(event:String):Bool;
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):ServerResponse { })
	function on(event:String, listener:() -> Void):ServerResponse;
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):ServerResponse { })
	function once(event:String, listener:() -> Void):ServerResponse;
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):ServerResponse { })
	function prependListener(event:String, listener:() -> Void):ServerResponse;
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):ServerResponse { })
	function prependOnceListener(event:String, listener:() -> Void):ServerResponse;
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):ServerResponse { })
	function removeListener(event:String, listener:() -> Void):ServerResponse;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):ServerResponse;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):ServerResponse;
	function setMaxListeners(n:Float):ServerResponse;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}