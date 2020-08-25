package dnd.core;

typedef DragDropManager = {
	function getMonitor():DragDropMonitor;
	function getBackend():Backend;
	function getRegistry():HandlerRegistry;
	function getActions():DragDropActions;
	function dispatch(action:Dynamic):Void;
};