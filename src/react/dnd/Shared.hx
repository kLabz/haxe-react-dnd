package react.dnd;

/**
	A property P will be present if :

	* it is present in both DecorationTargetProps and InjectedProps
	* InjectedProps[P] can satisfy DecorationTargetProps[P]
	  ie: decorated component can accept more types than decorator is injecting

	For decoration, inject props or ownProps are all optionally required by the
	decorated (right hand side) component.

	But any property required by the decorated component must be satisfied by the injected property.
**/
// TODO: get rid of Dynamic
typedef Shared<InjectedProps, DecorationTargetProps> = Dynamic;
