event dispatching
dispatch: event to: object 
			
	| tmp |
	(self checkEventTrapFor: event) ifFalse:
		[object triggerEvent: event class name with: event.
		^object handleEvent: event].
	tmp := state.
	[self halt: (#eventTrap << #dialogs >> 'Event Trap'). object handleEvent: event] ensure: [state := tmp]