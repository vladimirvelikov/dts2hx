package js.html;
extern typedef AuthenticationExtensionsClientOutputs = { @:optional
	var appid : Bool; @:optional
	var authnSel : Bool; @:optional
	var exts : std.Array<String>; @:optional
	var loc : Coordinates; @:optional
	var txAuthGeneric : js.lib.ArrayBuffer; @:optional
	var txAuthSimple : String; @:optional
	var uvi : js.lib.ArrayBuffer; @:optional
	var uvm : std.Array<std.Array<Float>>; };