package react.dnd;

typedef DragSourceCollector<CollectedProps, TargetProps> = (connect:DragSourceConnector, monitor:DragSourceMonitor, props:TargetProps) -> CollectedProps;