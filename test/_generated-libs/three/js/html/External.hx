package js.html;
@:native("External") @tsInterface extern class External {
	function new();
	function AddSearchProvider():Void;
	function IsSearchProviderInstalled():Void;
	static var prototype : External;
}