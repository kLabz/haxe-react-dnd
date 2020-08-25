package dnd.core;

typedef DragSource = {
	function beginDrag(monitor:DragDropMonitor, targetId:Identifier):Void;
	function endDrag(monitor:DragDropMonitor, targetId:Identifier):Void;
	function canDrag(monitor:DragDropMonitor, targetId:Identifier):Bool;
	function isDragging(monitor:DragDropMonitor, targetId:Identifier):Bool;
};