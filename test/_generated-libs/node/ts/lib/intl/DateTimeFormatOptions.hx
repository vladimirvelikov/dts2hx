package ts.lib.intl;

typedef DateTimeFormatOptions = {
	@:optional
	var localeMatcher : String;
	@:optional
	var weekday : String;
	@:optional
	var era : String;
	@:optional
	var year : String;
	@:optional
	var month : String;
	@:optional
	var day : String;
	@:optional
	var hour : String;
	@:optional
	var minute : String;
	@:optional
	var second : String;
	@:optional
	var timeZoneName : String;
	@:optional
	var formatMatcher : String;
	@:optional
	var hour12 : Bool;
	@:optional
	var timeZone : String;
};