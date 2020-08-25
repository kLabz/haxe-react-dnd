package react.dnd;

typedef DragPreviewImageProps = {
	// TODO: double check ReactType vs ReactFragment
	dynamic function connect(elementOrNode:ConnectableElement, ?options:DragPreviewOptions):Null<ReactType>;
	var src:String;
};
