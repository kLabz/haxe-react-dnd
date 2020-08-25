package dnd.core;

typedef ActionCreator<Payload> = (args:Array<Dynamic>) -> Action<Payload>;