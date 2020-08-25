package dnd.core;

typedef BeginDragPayload = {
	var itemType:Identifier;
	var item:Dynamic;
	var sourceId:Identifier;
	var clientOffset:Null<XYCoord>;
	var sourceClientOffset:Null<XYCoord>;
	var isSourcePublic:Bool;
};
