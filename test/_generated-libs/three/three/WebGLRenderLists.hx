package three;
@:jsRequire("three", "WebGLRenderLists") extern class WebGLRenderLists {
	function dispose():Void;
	function get(scene:Scene, camera:Camera):WebGLRenderList;
}