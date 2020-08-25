package dnd.core;

typedef DragDropMonitor = {
	function subscribeToStateChange(listener:Listener, ?options:{handlerIds:Null<Array<Identifier>>}):Unsubscribe;
	function subscribeToOffsetChange(listener:Listener):Unsubscribe;

	function canDragSource(sourceId:Null<Identifier>):Bool;
	function canDropOnTarget(targetId:Null<Identifier>):Bool;

	/**
		Returns true if a drag operation is in progress, and either the owner initiated the drag, or its isDragging()
		is defined and returns true.
	**/
	function isDragging():Bool;
	function isDraggingSource(sourceId:Null<Identifier>):Bool;
	function isOverTarget(targetId:Null<Identifier>, ?options:{?shallow:Bool}):Bool;

	/**
		Returns a string or an ES6 symbol identifying the type of the current
		dragged item.

		Returns null if no item is being dragged.
	**/
	function getItemType():Null<Identifier>;

	/**
		Returns a plain object representing the currently dragged item. Every
		drag source must specify it by returning an object from its beginDrag()
		method.

		Returns null if no item is being dragged.
	**/
	function getItem():Dynamic;
	function getSourceId():Null<Identifier>;
	function getTargetIds():Array<Identifier>;

	/**
		Returns a plain object representing the last recorded drop result. The
		drop targets may optionally specify it by returning an object from their
		drop() methods. When a chain of drop() is dispatched for the nested
		targets, bottom up, any parent that explicitly returns its own result
		from drop() overrides the child drop result previously set by the child.

		Returns null if called outside endDrag().
	**/
	function getDropResult():Dynamic;

	/**
		Returns true if some drop target has handled the drop event, false
		otherwise. Even if a target did not return a drop result, didDrop()
		returns true. Use it inside endDrag() to test whether any drop target
		has handled the drop.

		Returns false if called outside endDrag().
	**/
	function didDrop():Bool;

	function isSourcePublic():Null<Bool>;

	/**
		Returns the { x, y } client offset of the pointer at the time when the
		current drag operation has started.

		Returns null if no item is being dragged.
	**/
	function getInitialClientOffset():Null<XYCoord>;

	/**
		Returns the { x, y } client offset of the drag source component's root
		DOM node at the time when the current drag operation has started.

		Returns null if no item is being dragged.
	**/
	function getInitialSourceClientOffset():Null<XYCoord>;

	/**
		Returns the last recorded { x, y } client offset of the pointer while a
		drag operation is in progress.

		Returns null if no item is being dragged.
	**/
	function getClientOffset():Null<XYCoord>;

	/**
		Returns the projected { x, y } client offset of the drag source
		component's root DOM node, based on its position at the time when the
		current drag operation has started, and the movement difference.

		Returns null if no item is being dragged.
	**/
	function getSourceClientOffset():Null<XYCoord>;

	/**
		Returns the { x, y } difference between the last recorded client offset
		of the pointer and the client offset when the current drag operation has
		started.

		Returns null if no item is being dragged.
	**/
	function getDifferenceFromInitialOffset():Null<XYCoord>;
};
