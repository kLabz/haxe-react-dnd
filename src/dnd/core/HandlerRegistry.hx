package dnd.core;

typedef HandlerRegistry = {
	function addSource(type:Identifier, source:DragSource):Identifier;
	function addTarget(type:TargetType, target:DropTarget):Identifier;
	function containsHandler(handler:ts.AnyOf2<DragSource, DropTarget>):Bool;
	function getSource(sourceId:Identifier, ?includePinned:Bool):DragSource;
	function getSourceType(sourceId:Identifier):Identifier;
	function getTargetType(targetId:Identifier):TargetType;
	function getTarget(targetId:Identifier):DropTarget;
	function isSourceId(handlerId:Identifier):Bool;
	function isTargetId(handlerId:Identifier):Bool;
	function removeSource(sourceId:Identifier):Void;
	function removeTarget(targetId:Identifier):Void;
	function pinSource(sourceId:Identifier):Void;
	function unpinSource():Void;
};