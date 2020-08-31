package react.dnd;

import dnd.core.Backend;
import dnd.core.DragDropManager;

typedef DndProviderProps<BackendContext, BackendOptions> = {
	@:optional var manager:DragDropManager;
	@:optional var backend:(manager:DragDropManager, ?globalContext:Dynamic, ?configuration:Dynamic)->Backend;
	@:optional var context:BackendContext;
	@:optional var options:BackendOptions;
	@:optional var debugMode:Bool;
};
