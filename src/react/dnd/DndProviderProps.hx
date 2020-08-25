package react.dnd;

import dnd.core.Backend;
import dnd.core.DragDropManager;

typedef DndProviderProps<BackendContext, BackendOptions> = ts.AnyOf2<{
	var manager:DragDropManager;
}, {
	// TODO: remove Dynamic here?
	dynamic function backend(manager:DragDropManager, ?globalContext:Dynamic, ?configuration:Dynamic):Backend;
	@:optional var context:BackendContext;
	@:optional var options:BackendOptions;
	@:optional var debugMode:Bool;
}>;
