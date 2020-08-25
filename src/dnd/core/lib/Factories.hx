package dnd.core.lib;

@:jsRequire("dnd-core/lib/factories") @valueModuleOnly
extern class Factories {
	static function createDragDropManager(backendFactory:BackendFactory, globalContext:Any, backendOptions:Any, ?debugMode:Bool):DragDropManager;
}
