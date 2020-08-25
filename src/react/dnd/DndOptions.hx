package react.dnd;

/**
	Options for the Drag Sources, Drop Tragets, and Drag Layers annotation
**/
typedef DndOptions<Props> = {
	@:optional
	dynamic function arePropsEqual(first:Props, second:Props):Bool;
};