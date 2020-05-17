package ts.lib;

@:native("WeakSet") extern class WeakSet<T> {
	@:overload(function<T>(iterable:Iterable<T>):WeakSet<T> { })
	function new<T>(?values:ReadonlyArray<T>);
	function add(value:T):WeakSet<T>;
	function delete(value:T):Bool;
	function has(value:T):Bool;
	static final prototype : WeakSet<Dynamic>;
}