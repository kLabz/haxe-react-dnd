package react.dnd;

/**
	DragSourceConnector is an object passed to a collecting function of the DragSource.
	Its methods return functions that let you assign the roles to your component's DOM nodes.
**/
typedef DragSourceConnector = {
	/**
		Returns a function that must be used inside the component to assign the drag source role to a node. By
		returning { connectDragSource: connect.dragSource() } from your collecting function, you can mark any React
		element as the draggable node. To do that, replace any element with this.props.connectDragSource(element) inside
		the render function.
	**/
	function dragSource():DragElementWrapper<DragSourceOptions>;

	/**
		Optional. Returns a function that may be used inside the component to assign the drag preview role to a node. By
		returning { connectDragPreview: connect.dragPreview() } from your collecting function, you can mark any React element
		as the drag preview node. To do that, replace any element with this.props.connectDragPreview(element) inside the render
		function. The drag preview is the node that will be screenshotted by the HTML5 backend when the drag begins. For example,
		if you want to make something draggable by a small custom handle, you can mark this handle as the dragSource(), but also
		mark an outer, larger component node as the dragPreview(). Thus the larger drag preview appears on the screenshot, but
		only the smaller drag source is actually draggable. Another possible customization is passing an Image instance to dragPreview
		from a lifecycle method like componentDidMount. This lets you use the actual images for drag previews. (Note that IE does not
		support this customization). See the example code below for the different usage examples.
	**/
	function dragPreview():DragElementWrapper<DragPreviewOptions>;
};
