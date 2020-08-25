package react.dnd;

import dnd.core.Identifier;
import dnd.core.XYCoord;

typedef DragLayerMonitor = {
	/**
		Returns true if a drag operation is in progress. Returns false otherwise.
	**/
	function isDragging():Bool;

	/**
		Returns a string or an ES6 symbol identifying the type of the current dragged item.
		Returns null if no item is being dragged.
	**/
	function getItemType():Null<Identifier>;

	/**
		Returns a plain object representing the currently dragged item.
		Every drag source must specify it by returning an object from its beginDrag() method.
		Returns null if no item is being dragged.
	**/
	function getItem():Dynamic;

	/**
		Returns the { x, y } client offset of the pointer at the time when the current drag operation has started.
		Returns null if no item is being dragged.
	**/
	function getInitialClientOffset():Null<XYCoord>;

	/**
		Returns the { x, y } client offset of the drag source component's root DOM node at the time when the current
		drag operation has started. Returns null if no item is being dragged.
	**/
	function getInitialSourceClientOffset():Null<XYCoord>;

	/**
		Returns the last recorded { x, y } client offset of the pointer while a drag operation is in progress.
		Returns null if no item is being dragged.
	**/
	function getClientOffset():Null<XYCoord>;

	/**
		Returns the { x, y } difference between the last recorded client offset of the pointer and the client
		offset when current the drag operation has started. Returns null if no item is being dragged.
	**/
	function getDifferenceFromInitialOffset():Null<XYCoord>;

	/**
		Returns the projected { x, y } client offset of the drag source component's root DOM node, based on its
		position at the time when the current drag operation has started, and the movement difference.
		Returns null if no item is being dragged.
	**/
	function getSourceClientOffset():Null<XYCoord>;
};
