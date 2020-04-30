package ts.html;
/**
	Provides an interface to the OpenGL ES 2.0 graphics rendering context for the drawing surface of an HTML <canvas> element.
**/
extern typedef IWebGLRenderingContext = {
	final canvas : haxe.extern.EitherType<IHTMLCanvasElement, IOffscreenCanvas>;
	final drawingBufferHeight : Float;
	final drawingBufferWidth : Float;
	function activeTexture(texture:Float):Void;
	function attachShader(program:IWebGLProgram, shader:IWebGLShader):Void;
	function bindAttribLocation(program:IWebGLProgram, index:Float, name:String):Void;
	function bindBuffer(target:Float, buffer:Null<IWebGLBuffer>):Void;
	function bindFramebuffer(target:Float, framebuffer:Null<IWebGLFramebuffer>):Void;
	function bindRenderbuffer(target:Float, renderbuffer:Null<IWebGLRenderbuffer>):Void;
	function bindTexture(target:Float, texture:Null<IWebGLTexture>):Void;
	function blendColor(red:Float, green:Float, blue:Float, alpha:Float):Void;
	function blendEquation(mode:Float):Void;
	function blendEquationSeparate(modeRGB:Float, modeAlpha:Float):Void;
	function blendFunc(sfactor:Float, dfactor:Float):Void;
	function blendFuncSeparate(srcRGB:Float, dstRGB:Float, srcAlpha:Float, dstAlpha:Float):Void;
	function checkFramebufferStatus(target:Float):Float;
	function clear(mask:Float):Void;
	function clearColor(red:Float, green:Float, blue:Float, alpha:Float):Void;
	function clearDepth(depth:Float):Void;
	function clearStencil(s:Float):Void;
	function colorMask(red:Bool, green:Bool, blue:Bool, alpha:Bool):Void;
	function compileShader(shader:IWebGLShader):Void;
	function copyTexImage2D(target:Float, level:Float, internalformat:Float, x:Float, y:Float, width:Float, height:Float, border:Float):Void;
	function copyTexSubImage2D(target:Float, level:Float, xoffset:Float, yoffset:Float, x:Float, y:Float, width:Float, height:Float):Void;
	function createBuffer():Null<IWebGLBuffer>;
	function createFramebuffer():Null<IWebGLFramebuffer>;
	function createProgram():Null<IWebGLProgram>;
	function createRenderbuffer():Null<IWebGLRenderbuffer>;
	function createShader(type:Float):Null<IWebGLShader>;
	function createTexture():Null<IWebGLTexture>;
	function cullFace(mode:Float):Void;
	function deleteBuffer(buffer:Null<IWebGLBuffer>):Void;
	function deleteFramebuffer(framebuffer:Null<IWebGLFramebuffer>):Void;
	function deleteProgram(program:Null<IWebGLProgram>):Void;
	function deleteRenderbuffer(renderbuffer:Null<IWebGLRenderbuffer>):Void;
	function deleteShader(shader:Null<IWebGLShader>):Void;
	function deleteTexture(texture:Null<IWebGLTexture>):Void;
	function depthFunc(func:Float):Void;
	function depthMask(flag:Bool):Void;
	function depthRange(zNear:Float, zFar:Float):Void;
	function detachShader(program:IWebGLProgram, shader:IWebGLShader):Void;
	function disable(cap:Float):Void;
	function disableVertexAttribArray(index:Float):Void;
	function drawArrays(mode:Float, first:Float, count:Float):Void;
	function drawElements(mode:Float, count:Float, type:Float, offset:Float):Void;
	function enable(cap:Float):Void;
	function enableVertexAttribArray(index:Float):Void;
	function finish():Void;
	function flush():Void;
	function framebufferRenderbuffer(target:Float, attachment:Float, renderbuffertarget:Float, renderbuffer:Null<IWebGLRenderbuffer>):Void;
	function framebufferTexture2D(target:Float, attachment:Float, textarget:Float, texture:Null<IWebGLTexture>, level:Float):Void;
	function frontFace(mode:Float):Void;
	function generateMipmap(target:Float):Void;
	function getActiveAttrib(program:IWebGLProgram, index:Float):Null<IWebGLActiveInfo>;
	function getActiveUniform(program:IWebGLProgram, index:Float):Null<IWebGLActiveInfo>;
	function getAttachedShaders(program:IWebGLProgram):Null<std.Array<IWebGLShader>>;
	function getAttribLocation(program:IWebGLProgram, name:String):Float;
	function getBufferParameter(target:Float, pname:Float):Any;
	function getContextAttributes():Null<WebGLContextAttributes>;
	function getError():Float;
	@:overload(function(extensionName:String):Null<EXT_texture_filter_anisotropic> { })
	@:overload(function(extensionName:String):Null<EXT_frag_depth> { })
	@:overload(function(extensionName:String):Null<EXT_shader_texture_lod> { })
	@:overload(function(extensionName:String):Null<EXT_sRGB> { })
	@:overload(function(extensionName:String):Null<OES_vertex_array_object> { })
	@:overload(function(extensionName:String):Null<WEBGL_color_buffer_float> { })
	@:overload(function(extensionName:String):Null<WEBGL_compressed_texture_astc> { })
	@:overload(function(extensionName:String):Null<WEBGL_compressed_texture_s3tc_srgb> { })
	@:overload(function(extensionName:String):Null<WEBGL_debug_shaders> { })
	@:overload(function(extensionName:String):Null<ts.lib.WEBGL_draw_buffers> { })
	@:overload(function(extensionName:String):Null<WEBGL_lose_context> { })
	@:overload(function(extensionName:String):Null<WEBGL_depth_texture> { })
	@:overload(function(extensionName:String):Null<WEBGL_debug_renderer_info> { })
	@:overload(function(extensionName:String):Null<WEBGL_compressed_texture_s3tc> { })
	@:overload(function(extensionName:String):Null<OES_texture_half_float_linear> { })
	@:overload(function(extensionName:String):Null<OES_texture_half_float> { })
	@:overload(function(extensionName:String):Null<OES_texture_float_linear> { })
	@:overload(function(extensionName:String):Null<OES_texture_float> { })
	@:overload(function(extensionName:String):Null<OES_standard_derivatives> { })
	@:overload(function(extensionName:String):Null<OES_element_index_uint> { })
	@:overload(function(extensionName:String):Null<ANGLE_instanced_arrays> { })
	@:overload(function(extensionName:String):Any { })
	function getExtension(extensionName:String):Null<EXT_blend_minmax>;
	function getFramebufferAttachmentParameter(target:Float, attachment:Float, pname:Float):Any;
	function getParameter(pname:Float):Any;
	function getProgramInfoLog(program:IWebGLProgram):Null<String>;
	function getProgramParameter(program:IWebGLProgram, pname:Float):Any;
	function getRenderbufferParameter(target:Float, pname:Float):Any;
	function getShaderInfoLog(shader:IWebGLShader):Null<String>;
	function getShaderParameter(shader:IWebGLShader, pname:Float):Any;
	function getShaderPrecisionFormat(shadertype:Float, precisiontype:Float):Null<IWebGLShaderPrecisionFormat>;
	function getShaderSource(shader:IWebGLShader):Null<String>;
	function getSupportedExtensions():Null<std.Array<String>>;
	function getTexParameter(target:Float, pname:Float):Any;
	function getUniform(program:IWebGLProgram, location:IWebGLUniformLocation):Any;
	function getUniformLocation(program:IWebGLProgram, name:String):Null<IWebGLUniformLocation>;
	function getVertexAttrib(index:Float, pname:Float):Any;
	function getVertexAttribOffset(index:Float, pname:Float):Float;
	function hint(target:Float, mode:Float):Void;
	function isBuffer(buffer:Null<IWebGLBuffer>):Bool;
	function isContextLost():Bool;
	function isEnabled(cap:Float):Bool;
	function isFramebuffer(framebuffer:Null<IWebGLFramebuffer>):Bool;
	function isProgram(program:Null<IWebGLProgram>):Bool;
	function isRenderbuffer(renderbuffer:Null<IWebGLRenderbuffer>):Bool;
	function isShader(shader:Null<IWebGLShader>):Bool;
	function isTexture(texture:Null<IWebGLTexture>):Bool;
	function lineWidth(width:Float):Void;
	function linkProgram(program:IWebGLProgram):Void;
	function pixelStorei(pname:Float, param:haxe.extern.EitherType<Float, Bool>):Void;
	function polygonOffset(factor:Float, units:Float):Void;
	function renderbufferStorage(target:Float, internalformat:Float, width:Float, height:Float):Void;
	function sampleCoverage(value:Float, invert:Bool):Void;
	function scissor(x:Float, y:Float, width:Float, height:Float):Void;
	function shaderSource(shader:IWebGLShader, source:String):Void;
	function stencilFunc(func:Float, ref:Float, mask:Float):Void;
	function stencilFuncSeparate(face:Float, func:Float, ref:Float, mask:Float):Void;
	function stencilMask(mask:Float):Void;
	function stencilMaskSeparate(face:Float, mask:Float):Void;
	function stencilOp(fail:Float, zfail:Float, zpass:Float):Void;
	function stencilOpSeparate(face:Float, fail:Float, zfail:Float, zpass:Float):Void;
	function texParameterf(target:Float, pname:Float, param:Float):Void;
	function texParameteri(target:Float, pname:Float, param:Float):Void;
	function uniform1f(location:Null<IWebGLUniformLocation>, x:Float):Void;
	function uniform1i(location:Null<IWebGLUniformLocation>, x:Float):Void;
	function uniform2f(location:Null<IWebGLUniformLocation>, x:Float, y:Float):Void;
	function uniform2i(location:Null<IWebGLUniformLocation>, x:Float, y:Float):Void;
	function uniform3f(location:Null<IWebGLUniformLocation>, x:Float, y:Float, z:Float):Void;
	function uniform3i(location:Null<IWebGLUniformLocation>, x:Float, y:Float, z:Float):Void;
	function uniform4f(location:Null<IWebGLUniformLocation>, x:Float, y:Float, z:Float, w:Float):Void;
	function uniform4i(location:Null<IWebGLUniformLocation>, x:Float, y:Float, z:Float, w:Float):Void;
	function useProgram(program:Null<IWebGLProgram>):Void;
	function validateProgram(program:IWebGLProgram):Void;
	function vertexAttrib1f(index:Float, x:Float):Void;
	@:overload(function(index:Float, values:ts.lib.Iterable<Float>):Void { })
	function vertexAttrib1fv(index:Float, values:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
	function vertexAttrib2f(index:Float, x:Float, y:Float):Void;
	@:overload(function(index:Float, values:ts.lib.Iterable<Float>):Void { })
	function vertexAttrib2fv(index:Float, values:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
	function vertexAttrib3f(index:Float, x:Float, y:Float, z:Float):Void;
	@:overload(function(index:Float, values:ts.lib.Iterable<Float>):Void { })
	function vertexAttrib3fv(index:Float, values:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
	function vertexAttrib4f(index:Float, x:Float, y:Float, z:Float, w:Float):Void;
	@:overload(function(index:Float, values:ts.lib.Iterable<Float>):Void { })
	function vertexAttrib4fv(index:Float, values:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
	function vertexAttribPointer(index:Float, size:Float, type:Float, normalized:Bool, stride:Float, offset:Float):Void;
	function viewport(x:Float, y:Float, width:Float, height:Float):Void;
	final ACTIVE_ATTRIBUTES : Float;
	final ACTIVE_TEXTURE : Float;
	final ACTIVE_UNIFORMS : Float;
	final ALIASED_LINE_WIDTH_RANGE : Float;
	final ALIASED_POINT_SIZE_RANGE : Float;
	final ALPHA : Float;
	final ALPHA_BITS : Float;
	final ALWAYS : Float;
	final ARRAY_BUFFER : Float;
	final ARRAY_BUFFER_BINDING : Float;
	final ATTACHED_SHADERS : Float;
	final BACK : Float;
	final BLEND : Float;
	final BLEND_COLOR : Float;
	final BLEND_DST_ALPHA : Float;
	final BLEND_DST_RGB : Float;
	final BLEND_EQUATION : Float;
	final BLEND_EQUATION_ALPHA : Float;
	final BLEND_EQUATION_RGB : Float;
	final BLEND_SRC_ALPHA : Float;
	final BLEND_SRC_RGB : Float;
	final BLUE_BITS : Float;
	final BOOL : Float;
	final BOOL_VEC2 : Float;
	final BOOL_VEC3 : Float;
	final BOOL_VEC4 : Float;
	final BROWSER_DEFAULT_WEBGL : Float;
	final BUFFER_SIZE : Float;
	final BUFFER_USAGE : Float;
	final BYTE : Float;
	final CCW : Float;
	final CLAMP_TO_EDGE : Float;
	final COLOR_ATTACHMENT0 : Float;
	final COLOR_BUFFER_BIT : Float;
	final COLOR_CLEAR_VALUE : Float;
	final COLOR_WRITEMASK : Float;
	final COMPILE_STATUS : Float;
	final COMPRESSED_TEXTURE_FORMATS : Float;
	final CONSTANT_ALPHA : Float;
	final CONSTANT_COLOR : Float;
	final CONTEXT_LOST_WEBGL : Float;
	final CULL_FACE : Float;
	final CULL_FACE_MODE : Float;
	final CURRENT_PROGRAM : Float;
	final CURRENT_VERTEX_ATTRIB : Float;
	final CW : Float;
	final DECR : Float;
	final DECR_WRAP : Float;
	final DELETE_STATUS : Float;
	final DEPTH_ATTACHMENT : Float;
	final DEPTH_BITS : Float;
	final DEPTH_BUFFER_BIT : Float;
	final DEPTH_CLEAR_VALUE : Float;
	final DEPTH_COMPONENT : Float;
	final DEPTH_COMPONENT16 : Float;
	final DEPTH_FUNC : Float;
	final DEPTH_RANGE : Float;
	final DEPTH_STENCIL : Float;
	final DEPTH_STENCIL_ATTACHMENT : Float;
	final DEPTH_TEST : Float;
	final DEPTH_WRITEMASK : Float;
	final DITHER : Float;
	final DONT_CARE : Float;
	final DST_ALPHA : Float;
	final DST_COLOR : Float;
	final DYNAMIC_DRAW : Float;
	final ELEMENT_ARRAY_BUFFER : Float;
	final ELEMENT_ARRAY_BUFFER_BINDING : Float;
	final EQUAL : Float;
	final FASTEST : Float;
	final FLOAT : Float;
	final FLOAT_MAT2 : Float;
	final FLOAT_MAT3 : Float;
	final FLOAT_MAT4 : Float;
	final FLOAT_VEC2 : Float;
	final FLOAT_VEC3 : Float;
	final FLOAT_VEC4 : Float;
	final FRAGMENT_SHADER : Float;
	final FRAMEBUFFER : Float;
	final FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : Float;
	final FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : Float;
	final FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : Float;
	final FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : Float;
	final FRAMEBUFFER_BINDING : Float;
	final FRAMEBUFFER_COMPLETE : Float;
	final FRAMEBUFFER_INCOMPLETE_ATTACHMENT : Float;
	final FRAMEBUFFER_INCOMPLETE_DIMENSIONS : Float;
	final FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : Float;
	final FRAMEBUFFER_UNSUPPORTED : Float;
	final FRONT : Float;
	final FRONT_AND_BACK : Float;
	final FRONT_FACE : Float;
	final FUNC_ADD : Float;
	final FUNC_REVERSE_SUBTRACT : Float;
	final FUNC_SUBTRACT : Float;
	final GENERATE_MIPMAP_HINT : Float;
	final GEQUAL : Float;
	final GREATER : Float;
	final GREEN_BITS : Float;
	final HIGH_FLOAT : Float;
	final HIGH_INT : Float;
	final IMPLEMENTATION_COLOR_READ_FORMAT : Float;
	final IMPLEMENTATION_COLOR_READ_TYPE : Float;
	final INCR : Float;
	final INCR_WRAP : Float;
	final INT : Float;
	final INT_VEC2 : Float;
	final INT_VEC3 : Float;
	final INT_VEC4 : Float;
	final INVALID_ENUM : Float;
	final INVALID_FRAMEBUFFER_OPERATION : Float;
	final INVALID_OPERATION : Float;
	final INVALID_VALUE : Float;
	final INVERT : Float;
	final KEEP : Float;
	final LEQUAL : Float;
	final LESS : Float;
	final LINEAR : Float;
	final LINEAR_MIPMAP_LINEAR : Float;
	final LINEAR_MIPMAP_NEAREST : Float;
	final LINES : Float;
	final LINE_LOOP : Float;
	final LINE_STRIP : Float;
	final LINE_WIDTH : Float;
	final LINK_STATUS : Float;
	final LOW_FLOAT : Float;
	final LOW_INT : Float;
	final LUMINANCE : Float;
	final LUMINANCE_ALPHA : Float;
	final MAX_COMBINED_TEXTURE_IMAGE_UNITS : Float;
	final MAX_CUBE_MAP_TEXTURE_SIZE : Float;
	final MAX_FRAGMENT_UNIFORM_VECTORS : Float;
	final MAX_RENDERBUFFER_SIZE : Float;
	final MAX_TEXTURE_IMAGE_UNITS : Float;
	final MAX_TEXTURE_SIZE : Float;
	final MAX_VARYING_VECTORS : Float;
	final MAX_VERTEX_ATTRIBS : Float;
	final MAX_VERTEX_TEXTURE_IMAGE_UNITS : Float;
	final MAX_VERTEX_UNIFORM_VECTORS : Float;
	final MAX_VIEWPORT_DIMS : Float;
	final MEDIUM_FLOAT : Float;
	final MEDIUM_INT : Float;
	final MIRRORED_REPEAT : Float;
	final NEAREST : Float;
	final NEAREST_MIPMAP_LINEAR : Float;
	final NEAREST_MIPMAP_NEAREST : Float;
	final NEVER : Float;
	final NICEST : Float;
	final NONE : Float;
	final NOTEQUAL : Float;
	final NO_ERROR : Float;
	final ONE : Float;
	final ONE_MINUS_CONSTANT_ALPHA : Float;
	final ONE_MINUS_CONSTANT_COLOR : Float;
	final ONE_MINUS_DST_ALPHA : Float;
	final ONE_MINUS_DST_COLOR : Float;
	final ONE_MINUS_SRC_ALPHA : Float;
	final ONE_MINUS_SRC_COLOR : Float;
	final OUT_OF_MEMORY : Float;
	final PACK_ALIGNMENT : Float;
	final POINTS : Float;
	final POLYGON_OFFSET_FACTOR : Float;
	final POLYGON_OFFSET_FILL : Float;
	final POLYGON_OFFSET_UNITS : Float;
	final RED_BITS : Float;
	final RENDERBUFFER : Float;
	final RENDERBUFFER_ALPHA_SIZE : Float;
	final RENDERBUFFER_BINDING : Float;
	final RENDERBUFFER_BLUE_SIZE : Float;
	final RENDERBUFFER_DEPTH_SIZE : Float;
	final RENDERBUFFER_GREEN_SIZE : Float;
	final RENDERBUFFER_HEIGHT : Float;
	final RENDERBUFFER_INTERNAL_FORMAT : Float;
	final RENDERBUFFER_RED_SIZE : Float;
	final RENDERBUFFER_STENCIL_SIZE : Float;
	final RENDERBUFFER_WIDTH : Float;
	final RENDERER : Float;
	final REPEAT : Float;
	final REPLACE : Float;
	final RGB : Float;
	final RGB565 : Float;
	final RGB5_A1 : Float;
	final RGBA : Float;
	final RGBA4 : Float;
	final SAMPLER_2D : Float;
	final SAMPLER_CUBE : Float;
	final SAMPLES : Float;
	final SAMPLE_ALPHA_TO_COVERAGE : Float;
	final SAMPLE_BUFFERS : Float;
	final SAMPLE_COVERAGE : Float;
	final SAMPLE_COVERAGE_INVERT : Float;
	final SAMPLE_COVERAGE_VALUE : Float;
	final SCISSOR_BOX : Float;
	final SCISSOR_TEST : Float;
	final SHADER_TYPE : Float;
	final SHADING_LANGUAGE_VERSION : Float;
	final SHORT : Float;
	final SRC_ALPHA : Float;
	final SRC_ALPHA_SATURATE : Float;
	final SRC_COLOR : Float;
	final STATIC_DRAW : Float;
	final STENCIL_ATTACHMENT : Float;
	final STENCIL_BACK_FAIL : Float;
	final STENCIL_BACK_FUNC : Float;
	final STENCIL_BACK_PASS_DEPTH_FAIL : Float;
	final STENCIL_BACK_PASS_DEPTH_PASS : Float;
	final STENCIL_BACK_REF : Float;
	final STENCIL_BACK_VALUE_MASK : Float;
	final STENCIL_BACK_WRITEMASK : Float;
	final STENCIL_BITS : Float;
	final STENCIL_BUFFER_BIT : Float;
	final STENCIL_CLEAR_VALUE : Float;
	final STENCIL_FAIL : Float;
	final STENCIL_FUNC : Float;
	final STENCIL_INDEX8 : Float;
	final STENCIL_PASS_DEPTH_FAIL : Float;
	final STENCIL_PASS_DEPTH_PASS : Float;
	final STENCIL_REF : Float;
	final STENCIL_TEST : Float;
	final STENCIL_VALUE_MASK : Float;
	final STENCIL_WRITEMASK : Float;
	final STREAM_DRAW : Float;
	final SUBPIXEL_BITS : Float;
	final TEXTURE : Float;
	final TEXTURE0 : Float;
	final TEXTURE1 : Float;
	final TEXTURE10 : Float;
	final TEXTURE11 : Float;
	final TEXTURE12 : Float;
	final TEXTURE13 : Float;
	final TEXTURE14 : Float;
	final TEXTURE15 : Float;
	final TEXTURE16 : Float;
	final TEXTURE17 : Float;
	final TEXTURE18 : Float;
	final TEXTURE19 : Float;
	final TEXTURE2 : Float;
	final TEXTURE20 : Float;
	final TEXTURE21 : Float;
	final TEXTURE22 : Float;
	final TEXTURE23 : Float;
	final TEXTURE24 : Float;
	final TEXTURE25 : Float;
	final TEXTURE26 : Float;
	final TEXTURE27 : Float;
	final TEXTURE28 : Float;
	final TEXTURE29 : Float;
	final TEXTURE3 : Float;
	final TEXTURE30 : Float;
	final TEXTURE31 : Float;
	final TEXTURE4 : Float;
	final TEXTURE5 : Float;
	final TEXTURE6 : Float;
	final TEXTURE7 : Float;
	final TEXTURE8 : Float;
	final TEXTURE9 : Float;
	final TEXTURE_2D : Float;
	final TEXTURE_BINDING_2D : Float;
	final TEXTURE_BINDING_CUBE_MAP : Float;
	final TEXTURE_CUBE_MAP : Float;
	final TEXTURE_CUBE_MAP_NEGATIVE_X : Float;
	final TEXTURE_CUBE_MAP_NEGATIVE_Y : Float;
	final TEXTURE_CUBE_MAP_NEGATIVE_Z : Float;
	final TEXTURE_CUBE_MAP_POSITIVE_X : Float;
	final TEXTURE_CUBE_MAP_POSITIVE_Y : Float;
	final TEXTURE_CUBE_MAP_POSITIVE_Z : Float;
	final TEXTURE_MAG_FILTER : Float;
	final TEXTURE_MIN_FILTER : Float;
	final TEXTURE_WRAP_S : Float;
	final TEXTURE_WRAP_T : Float;
	final TRIANGLES : Float;
	final TRIANGLE_FAN : Float;
	final TRIANGLE_STRIP : Float;
	final UNPACK_ALIGNMENT : Float;
	final UNPACK_COLORSPACE_CONVERSION_WEBGL : Float;
	final UNPACK_FLIP_Y_WEBGL : Float;
	final UNPACK_PREMULTIPLY_ALPHA_WEBGL : Float;
	final UNSIGNED_BYTE : Float;
	final UNSIGNED_INT : Float;
	final UNSIGNED_SHORT : Float;
	final UNSIGNED_SHORT_4_4_4_4 : Float;
	final UNSIGNED_SHORT_5_5_5_1 : Float;
	final UNSIGNED_SHORT_5_6_5 : Float;
	final VALIDATE_STATUS : Float;
	final VENDOR : Float;
	final VERSION : Float;
	final VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : Float;
	final VERTEX_ATTRIB_ARRAY_ENABLED : Float;
	final VERTEX_ATTRIB_ARRAY_NORMALIZED : Float;
	final VERTEX_ATTRIB_ARRAY_POINTER : Float;
	final VERTEX_ATTRIB_ARRAY_SIZE : Float;
	final VERTEX_ATTRIB_ARRAY_STRIDE : Float;
	final VERTEX_ATTRIB_ARRAY_TYPE : Float;
	final VERTEX_SHADER : Float;
	final VIEWPORT : Float;
	final ZERO : Float;
	@:overload(function(target:Float, data:Null<haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>>, usage:Float):Void { })
	function bufferData(target:Float, size:Float, usage:Float):Void;
	function bufferSubData(target:Float, offset:Float, data:haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>):Void;
	function compressedTexImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, data:ts.lib.ArrayBufferView):Void;
	function compressedTexSubImage2D(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, data:ts.lib.ArrayBufferView):Void;
	function readPixels(x:Float, y:Float, width:Float, height:Float, format:Float, type:Float, pixels:Null<ts.lib.ArrayBufferView>):Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, format:Float, type:Float, source:haxe.extern.EitherType<IHTMLImageElement, haxe.extern.EitherType<IImageBitmap, haxe.extern.EitherType<IHTMLVideoElement, haxe.extern.EitherType<IHTMLCanvasElement, haxe.extern.EitherType<IOffscreenCanvas, IImageData>>>>>):Void { })
	function texImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, pixels:Null<ts.lib.ArrayBufferView>):Void;
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, format:Float, type:Float, source:haxe.extern.EitherType<IHTMLImageElement, haxe.extern.EitherType<IImageBitmap, haxe.extern.EitherType<IHTMLVideoElement, haxe.extern.EitherType<IHTMLCanvasElement, haxe.extern.EitherType<IOffscreenCanvas, IImageData>>>>>):Void { })
	function texSubImage2D(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, type:Float, pixels:Null<ts.lib.ArrayBufferView>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, v:ts.lib.Iterable<Float>):Void { })
	function uniform1fv(location:Null<IWebGLUniformLocation>, v:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, v:ts.lib.Iterable<Float>):Void { })
	function uniform1iv(location:Null<IWebGLUniformLocation>, v:haxe.extern.EitherType<ts.lib.IInt32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, v:ts.lib.Iterable<Float>):Void { })
	function uniform2fv(location:Null<IWebGLUniformLocation>, v:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, v:ts.lib.Iterable<Float>):Void { })
	function uniform2iv(location:Null<IWebGLUniformLocation>, v:haxe.extern.EitherType<ts.lib.IInt32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, v:ts.lib.Iterable<Float>):Void { })
	function uniform3fv(location:Null<IWebGLUniformLocation>, v:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, v:ts.lib.Iterable<Float>):Void { })
	function uniform3iv(location:Null<IWebGLUniformLocation>, v:haxe.extern.EitherType<ts.lib.IInt32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, v:ts.lib.Iterable<Float>):Void { })
	function uniform4fv(location:Null<IWebGLUniformLocation>, v:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, v:ts.lib.Iterable<Float>):Void { })
	function uniform4iv(location:Null<IWebGLUniformLocation>, v:haxe.extern.EitherType<ts.lib.IInt32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, value:ts.lib.Iterable<Float>):Void { })
	function uniformMatrix2fv(location:Null<IWebGLUniformLocation>, transpose:Bool, value:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, value:ts.lib.Iterable<Float>):Void { })
	function uniformMatrix3fv(location:Null<IWebGLUniformLocation>, transpose:Bool, value:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, value:ts.lib.Iterable<Float>):Void { })
	function uniformMatrix4fv(location:Null<IWebGLUniformLocation>, transpose:Bool, value:haxe.extern.EitherType<ts.lib.IFloat32Array, std.Array<Float>>):Void;
};