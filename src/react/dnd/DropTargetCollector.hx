package react.dnd;

typedef DropTargetCollector<CollectedProps, TargetProps> = (connect:DropTargetConnector, monitor:DropTargetMonitor, props:TargetProps) -> CollectedProps;