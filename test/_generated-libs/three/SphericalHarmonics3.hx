package three;
@:jsRequire("three", "SphericalHarmonics3") extern class SphericalHarmonics3 {
	function new();
	var coefficients : std.Array<Vector3>;
	var isSphericalHarmonics3 : Bool;
	function set(coefficients:std.Array<Vector3>):SphericalHarmonics3;
	function zero():SphericalHarmonics3;
	function add(sh:SphericalHarmonics3):SphericalHarmonics3;
	function scale(s:Float):SphericalHarmonics3;
	function lerp(sh:SphericalHarmonics3, alpha:Float):SphericalHarmonics3;
	function equals(sh:SphericalHarmonics3):Bool;
	function copy(sh:SphericalHarmonics3):SphericalHarmonics3;
	function clone():SphericalHarmonics3;
	function fromArray(array:std.Array<Float>):SphericalHarmonics3;
	function toArray():std.Array<Float>;
	function getAt(normal:Vector3, target:Vector3):Vector3;
	function getIrradianceAt(normal:Vector3, target:Vector3):Vector3;
	static function getBasisAt(normal:Vector3, shBasis:std.Array<Float>):Void;
}