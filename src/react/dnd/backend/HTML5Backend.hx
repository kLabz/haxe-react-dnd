package react.dnd.backend;

import js.html.ImageElement;

import dnd.core.Backend;
import dnd.core.DragDropManager;

// TODO: complete externs
@:jsRequire('react-dnd-html5-backend')
extern class HTML5Backend {
	@:native('HTML5Backend')
	static function backend(manager:DragDropManager, ?globalContext:Dynamic, ?configuration:Dynamic):Backend;

	static function getEmptyImage():ImageElement;
}
