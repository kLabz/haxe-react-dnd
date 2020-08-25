package dnd.core;

typedef DragDropActions = {
	function beginDrag(?sourceIds:Array<Identifier>, ?options:Dynamic):Null<Action<BeginDragPayload>>;
	function publishDragSource():Null<SentinelAction>;
	function hover(targetIds:Array<Identifier>, ?options:Dynamic):Action<HoverPayload>;
	function drop(?options:Dynamic):Void;
	function endDrag():SentinelAction;
};