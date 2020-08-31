package react.dnd;

import js.lib.Symbol;

import dnd.core.BackendFactory;
import dnd.core.DragDropManager;
import dnd.core.Identifier;
import dnd.core.TargetType;

@:jsRequire("react-dnd") @valueModuleOnly
extern class ReactDnd {
	/**
		Creates the context object we're providing
	**/
	static function createDndContext<BackendContext, BackendOptions>(backend:BackendFactory, ?context:BackendContext, ?options:BackendOptions, ?debugMode:Bool):DndContextType;

	/**
		Create the React Context
	**/
	static final DndContext:ReactContext<DndContextType>;

	/**
		useDragSource hook
	**/
	static function useDrag<DragObject, DropResult, CollectedProps>(spec:DragSourceHookSpec<DragObject, DropResult, CollectedProps>):ts.Tuple3<CollectedProps, DragElementWrapper<DragSourceOptions>, DragElementWrapper<DragPreviewOptions>>;

	/**
		useDropTarget Hook
	**/
	static function useDrop<DragObject, DropResult, CollectedProps>(spec:DropTargetHookSpec<DragObject, DropResult, CollectedProps>):ts.Tuple2<CollectedProps, DragElementWrapper<Dynamic>>;

	/**
		useDragLayer Hook
	**/
	static function useDragLayer<CollectedProps>(collect:(monitor:DragLayerMonitor) -> CollectedProps):CollectedProps;

	/**
		A hook to retrieve the DragDropManager from Context
	**/
	static function useDragDropManager():DragDropManager;

	/**
		Decorates a component as a dragsource
	**/
	static function DragSource<RequiredProps, CollectedProps, DragObject>(
		type:ts.AnyOf3<String, Symbol, (props:RequiredProps) -> Identifier>,
		spec:DragSourceSpec<RequiredProps, DragObject>,
		collect:DragSourceCollector<CollectedProps, RequiredProps>,
		?options:DndOptions<RequiredProps>
	):DndComponentEnhancer<CollectedProps>;

	static function DropTarget<RequiredProps, CollectedProps>(
		type:ts.AnyOf4<String, Symbol, Array<Identifier>,(props:RequiredProps) -> TargetType>,
		spec:DropTargetSpec<RequiredProps>,
		collect:DropTargetCollector<CollectedProps, RequiredProps>,
		?options:DndOptions<RequiredProps>
	):DndComponentEnhancer<CollectedProps>;

	static function DragLayer<RequiredProps, CollectedProps>(
		collect:DragLayerCollector<RequiredProps, CollectedProps>,
		?options:DndOptions<RequiredProps>
	):DndComponentEnhancer<CollectedProps>;
}
