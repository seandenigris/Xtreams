private-events
constructEventsTriggered

	^super constructEventsTriggered
		addAll: (Event allSubclasses collect: #name);
		add: #activate;
		add: #bounds;
		add: #close;
		add: #collapse;
		add: #deactivate;
		add: #destroy;
		add: #expand;
		add: #expose;
		add: #move;
		add: #resize;
		add: #enter;
		add: #exit;
		add: #closing;
		add: #closed;
		add: #opening;
		add: #mapped;
		add: #unmapped;
		add: #moving;
		add: #gettingFocus;
		add: #losingFocus;
		add: #unknownEvent;
		add: #mouseEnter;
		add: #mouseExit;
		add: #clicked;
		add: #doubleClicked;
		add: #rightClicked;
		add: #middleClicked;
		add: #menuBarCreated;
		add: #toolBarCreated;
		yourself