package node;
@:jsRequire("crypto") @valueModuleOnly extern class Crypto {
	static function createHash(algorithm:String, ?options:node.stream.TransformOptions):node.crypto.Hash;
	static function createHmac(algorithm:String, key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, ?options:node.stream.TransformOptions):node.crypto.Hmac;
	@:overload(function(algorithm:String, password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, ?options:node.crypto.CipherGCMOptions):node.crypto.CipherGCM { })
	@:overload(function(algorithm:String, password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, ?options:node.stream.TransformOptions):node.crypto.Cipher { })
	static function createCipher(algorithm:String, password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, options:node.crypto.CipherCCMOptions):node.crypto.CipherCCM;
	@:overload(function(algorithm:String, key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.DataView, node.crypto.KeyObject>>>>>>>>>>>>, iv:Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>>, ?options:node.crypto.CipherGCMOptions):node.crypto.CipherGCM { })
	@:overload(function(algorithm:String, key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.DataView, node.crypto.KeyObject>>>>>>>>>>>>, iv:Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>>, ?options:node.stream.TransformOptions):node.crypto.Cipher { })
	static function createCipheriv(algorithm:String, key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.DataView, node.crypto.KeyObject>>>>>>>>>>>>, iv:Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>>, options:node.crypto.CipherCCMOptions):node.crypto.CipherCCM;
	@:overload(function(algorithm:String, password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, ?options:node.crypto.CipherGCMOptions):node.crypto.DecipherGCM { })
	@:overload(function(algorithm:String, password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, ?options:node.stream.TransformOptions):node.crypto.Decipher { })
	static function createDecipher(algorithm:String, password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, options:node.crypto.CipherCCMOptions):node.crypto.DecipherCCM;
	@:overload(function(algorithm:String, key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, iv:Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>>, ?options:node.crypto.CipherGCMOptions):node.crypto.DecipherGCM { })
	@:overload(function(algorithm:String, key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, iv:Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>>, ?options:node.stream.TransformOptions):node.crypto.Decipher { })
	static function createDecipheriv(algorithm:String, key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, iv:Null<haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>>, options:node.crypto.CipherCCMOptions):node.crypto.DecipherCCM;
	static function createPrivateKey(key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.crypto.PrivateKeyInput>>):node.crypto.KeyObject;
	static function createPublicKey(key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.crypto.PublicKeyInput>>):node.crypto.KeyObject;
	static function createSecretKey(key:global.Buffer):node.crypto.KeyObject;
	static function createSign(algorithm:String, ?options:node.stream.WritableOptions):node.crypto.Signer;
	static function createVerify(algorith:String, ?options:node.stream.WritableOptions):node.crypto.Verify;
	@:overload(function(prime:haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>):node.crypto.DiffieHellman { })
	@:overload(function(prime:String, prime_encoding:String):node.crypto.DiffieHellman { })
	@:overload(function(prime:String, prime_encoding:String, generator:haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>):node.crypto.DiffieHellman { })
	@:overload(function(prime:String, prime_encoding:String, generator:String, generator_encoding:String):node.crypto.DiffieHellman { })
	static function createDiffieHellman(prime_length:Float, ?generator:haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>):node.crypto.DiffieHellman;
	static function getDiffieHellman(group_name:String):node.crypto.DiffieHellman;
	static function pbkdf2(password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, salt:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, iterations:Float, keylen:Float, digest:String, callback:(err:Null<js.lib.Error>, derivedKey:global.Buffer) -> Any):Void;
	static function pbkdf2Sync(password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, salt:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, iterations:Float, keylen:Float, digest:String):global.Buffer;
	@:overload(function(size:Float, callback:(err:Null<js.lib.Error>, buf:global.Buffer) -> Void):Void { })
	static function randomBytes(size:Float):global.Buffer;
	@:overload(function(size:Float, callback:(err:Null<js.lib.Error>, buf:global.Buffer) -> Void):Void { })
	static function pseudoRandomBytes(size:Float):global.Buffer;
	static function randomFillSync<T:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(buffer:T, ?offset:Float, ?size:Float):T;
	@:overload(function<T:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(buffer:T, offset:Float, callback:(err:Null<js.lib.Error>, buf:T) -> Void):Void { })
	@:overload(function<T:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(buffer:T, offset:Float, size:Float, callback:(err:Null<js.lib.Error>, buf:T) -> Void):Void { })
	static function randomFill<T:(haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(buffer:T, callback:(err:Null<js.lib.Error>, buf:T) -> Void):Void;
	@:overload(function(password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, salt:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, keylen:Float, options:node.crypto.ScryptOptions, callback:(err:Null<js.lib.Error>, derivedKey:global.Buffer) -> Void):Void { })
	static function scrypt(password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, salt:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, keylen:Float, callback:(err:Null<js.lib.Error>, derivedKey:global.Buffer) -> Void):Void;
	static function scryptSync(password:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, salt:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>>, keylen:Float, ?options:node.crypto.ScryptOptions):global.Buffer;
	static function publicEncrypt(public_key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<node.crypto.KeyObject, node.crypto.RsaPublicKey>>>, buffer:haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>):global.Buffer;
	static function privateDecrypt(private_key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<node.crypto.KeyObject, node.crypto.RsaPrivateKey>>>, buffer:haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>):global.Buffer;
	static function privateEncrypt(private_key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<node.crypto.KeyObject, node.crypto.RsaPrivateKey>>>, buffer:haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>):global.Buffer;
	static function publicDecrypt(public_key:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<node.crypto.KeyObject, node.crypto.RsaPublicKey>>>, buffer:haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>):global.Buffer;
	static function getCiphers():std.Array<String>;
	static function getCurves():std.Array<String>;
	static function getHashes():std.Array<String>;
	static function createECDH(curve_name:String):node.crypto.ECDH;
	static function timingSafeEqual(a:haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>, b:haxe.extern.EitherType<global.Buffer, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>):Bool;
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, String> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<global.Buffer, global.Buffer> { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairKeyObjectOptions):node.crypto.KeyPairKeyObjectResult { })
	static function generateKeyPairSync(type:String, options:node.crypto.RSAKeyPairOptions<String, String>):node.crypto.KeyPairSyncResult<String, String>;
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.RSAKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.DSAKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:node.crypto.ECKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:node.crypto.KeyObject, privateKey:node.crypto.KeyObject) -> Void):Void { })
	static function generateKeyPair(type:String, options:node.crypto.RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void;
	static var fips : Bool;
	static var DEFAULT_ENCODING : String;
}