package dnd.core;

typedef BeginDragOptions = {
	@:optional var publishSource:Bool;
	@:optional var clientOffset:XYCoord;
	@:optional dynamic function getSourceClientOffset(sourceId:Identifier):XYCoord;
};
