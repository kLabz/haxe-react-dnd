package dnd.core;

@:jsRequire("dnd-core") @valueModuleOnly
extern class DndCore {
	static function createDragDropManager(backendFactory:BackendFactory, globalContext:Any, backendOptions:Any, ?debugMode:Bool):DragDropManager;
}
