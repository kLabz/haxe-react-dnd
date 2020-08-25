package react.dnd;

import dnd.core.Identifier;

typedef HandlerManager = {
	dynamic function receiveHandlerId(handlerId:Null<Identifier>):Void;
	dynamic function getHandlerId():Null<Identifier>;
};
