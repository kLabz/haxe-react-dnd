package dnd.core;

typedef BackendFactory = ts.AnyOf3<
	(manager:DragDropManager) -> Backend,
	(manager:DragDropManager, globalContext:Dynamic) -> Backend,
	(manager:DragDropManager, globalContext:Dynamic, configuration:Dynamic) -> Backend
>;
