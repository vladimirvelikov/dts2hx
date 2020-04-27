package node;
@:jsRequire("net") extern class Net {
	@:overload(function(?options:{ @:optional
	var allowHalfOpen : Bool; @:optional
	var pauseOnConnect : Bool; }, ?connectionListener:(socket:node.net.Socket) -> Void):node.net.Server { })
	static function createServer(?connectionListener:(socket:node.net.Socket) -> Void):node.net.Server;
	@:overload(function(port:Float, ?host:String, ?connectionListener:() -> Void):node.net.Socket { })
	@:overload(function(path:String, ?connectionListener:() -> Void):node.net.Socket { })
	static function connect(options:haxe.extern.EitherType<node.net.TcpNetConnectOpts, node.net.IpcNetConnectOpts>, ?connectionListener:() -> Void):node.net.Socket;
	@:overload(function(port:Float, ?host:String, ?connectionListener:() -> Void):node.net.Socket { })
	@:overload(function(path:String, ?connectionListener:() -> Void):node.net.Socket { })
	static function createConnection(options:haxe.extern.EitherType<node.net.TcpNetConnectOpts, node.net.IpcNetConnectOpts>, ?connectionListener:() -> Void):node.net.Socket;
	static function isIP(input:String):Float;
	static function isIPv4(input:String):Bool;
	static function isIPv6(input:String):Bool;
}