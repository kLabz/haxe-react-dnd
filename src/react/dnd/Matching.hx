package react.dnd;

/**
	A property P will be present if:

	* it is present in DecorationTargetProps

	Its value will be dependent on the following conditions

	* if property P is present in InjectedProps and its definition extends the
	  definition in DecorationTargetProps, then its definition will be that of
	  DecorationTargetProps[P]

	* if property P is not present in InjectedProps then its definition will be
	  that of DecorationTargetProps[P]

	* if property P is present in InjectedProps but does not extend the
	  DecorationTargetProps[P] definition, its definition will be that of
	  InjectedProps[P]
**/
// TODO: get rid of Dynamic
typedef Matching<InjectedProps, DecorationTargetProps> = Dynamic;
