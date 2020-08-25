package react.dnd;

import dnd.core.Identifier;
import dnd.core.Unsubscribe;

typedef MonitorEventEmitter = {
	function subscribeToStateChange(fn:()->Void, ?options:{?handlerIds:Array<Identifier>}):Unsubscribe;
};
