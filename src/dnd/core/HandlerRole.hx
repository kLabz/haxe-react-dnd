package dnd.core;

@:jsRequire("dnd-core", "HandlerRole")
extern enum abstract HandlerRole(String) to String {
	var SOURCE;
	var TARGET;
}
