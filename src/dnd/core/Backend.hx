package dnd.core;

typedef Backend = {
	function setup():Void;
	function teardown():Void;
	function connectDragSource(sourceId:Dynamic, ?node:Dynamic, ?options:Dynamic):Unsubscribe;
	function connectDragPreview(sourceId:Dynamic, ?node:Dynamic, ?options:Dynamic):Unsubscribe;
	function connectDropTarget(targetId:Dynamic, ?node:Dynamic, ?options:Dynamic):Unsubscribe;
	function profile():{ };
};