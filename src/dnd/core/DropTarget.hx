package dnd.core;

typedef DropTarget = {
	function canDrop(monitor:DragDropMonitor, targetId:Identifier):Bool;
	function hover(monitor:DragDropMonitor, targetId:Identifier):Void;
	function drop(monitor:DragDropMonitor, targetId:Identifier):Dynamic;
};