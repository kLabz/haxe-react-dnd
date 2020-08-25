package dnd.core;

typedef Action<Payload> = {
	var type:Identifier;
	var payload:Payload;
};
