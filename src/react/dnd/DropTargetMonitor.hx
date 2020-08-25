package react.dnd;

import dnd.core.Identifier;
import dnd.core.Unsubscribe;
import dnd.core.XYCoord;

typedef DropTargetMonitor = {
	/**
		Returns true if there is a drag operation in progress, and the owner's
		canDrop() returns true or is not defined.
	**/
	function canDrop():Bool;

	/**
		Returns true if there is a drag operation in progress, and the pointer
		is currently hovering over the owner.

		You may optionally pass { shallow: true } to strictly check whether only
		the owner is being hovered, as opposed to a nested target.
	**/
	function isOver(?options:{?shallow:Bool}):Bool;

	/**
		Returns a string or an ES6 symbol identifying the type of the current
		dragged item. Returns null if no item is being dragged.
	**/
	function getItemType():Null<Identifier>;

	/**
		Returns a plain object representing the currently dragged item. Every
		drag source must specify it by returning an object from its beginDrag()
		method.

		Returns null if no item is being dragged.
	**/
	// TODO: get rid of Dynamic
	function getItem():Dynamic;

	/**
		Returns a plain object representing the last recorded drop result. The
		drop targets may optionally specify it by returning an object from their
		drop() methods. When a chain of drop() is dispatched for the nested
		targets, bottom up, any parent that explicitly returns its own result
		from drop() overrides the drop result previously set by the child.

		Returns null if called outside drop().
	**/
	// TODO: get rid of Dynamic
	function getDropResult():Dynamic;

	/**
		Returns true if some drop target has handled the drop event, false
		otherwise. Even if a target did not return a drop result, didDrop()
		returns true. Use it inside drop() to test whether any nested drop
		target has already handled the drop.

		Returns false if called outside drop().
	**/
	function didDrop():Bool;

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
		drag operation is in progress. Returns null if no item is being dragged.
	**/
	function getClientOffset():Null<XYCoord>;

	/**
		Returns the { x, y } difference between the last recorded client offset
		of the pointer and the client offset when current the drag operation has
		started.

		Returns null if no item is being dragged.
	**/
	function getDifferenceFromInitialOffset():Null<XYCoord>;

	/**
		Returns the projected { x, y } client offset of the drag source
		component's root DOM node, based on its position at the time when the
		current drag operation has started, and the movement difference.

		Returns null if no item is being dragged.
	**/
	function getSourceClientOffset():Null<XYCoord>;

	dynamic function receiveHandlerId(handlerId:Null<Identifier>):Void;

	dynamic function getHandlerId():Null<Identifier>;

	function subscribeToStateChange(fn:()->Void, ?options:{?handlerIds:Array<Identifier>}):Unsubscribe;
};
