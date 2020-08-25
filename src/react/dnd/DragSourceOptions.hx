package react.dnd;

typedef DragSourceOptions = {
	/**
		Optional. A string. By default, 'move'. In the browsers that support
		this feature, specifying 'copy' shows a special “copying” cursor, while
		'move' corresponds to the “move” cursor. You might want to use this
		option to provide a hint to the user about whether an action is
		destructive.
	**/
	// TODO: enum abstract
	@:optional var dropEffect:String;
};
