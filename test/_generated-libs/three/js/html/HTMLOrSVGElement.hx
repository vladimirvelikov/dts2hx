package js.html;
extern interface HTMLOrSVGElement {
	final dataset : DOMStringMap;
	@:optional
	var nonce : String;
	var tabIndex : Float;
	function blur():Void;
	function focus(?options:FocusOptions):Void;
}