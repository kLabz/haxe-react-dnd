package react.dnd;

/**
	DropTargetConnector is an object passed to a collecting function of the
	DropTarget. Its only method dropTarget() returns a function that lets you
	assign the drop target role to one of your component's DOM nodes.
**/
typedef DropTargetConnector = {
	/**
		Returns a function that must be used inside the component to assign the
		drop target role to a node.

		By returning { connectDropTarget: connect.dropTarget() } from your
		collecting function, you can mark any React element as the droppable
		node. To do that, replace any element with
		this.props.connectDropTarget(element) inside the render function.
	**/
	// TODO: get rid of Dynamic?
	function dropTarget():DragElementWrapper<Dynamic>;
};
