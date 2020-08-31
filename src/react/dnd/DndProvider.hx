package react.dnd;

/**
	A React component that provides the React-DnD context
**/
@:jsRequire("react-dnd", "DndProvider")
extern class DndProvider extends ReactComponent<DndProviderProps<Dynamic, Dynamic>> {}
