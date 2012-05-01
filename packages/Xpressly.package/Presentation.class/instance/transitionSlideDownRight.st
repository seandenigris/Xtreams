transitions
transitionSlideDownRight

	| animation x start t |

	(self widgetAt: #animation) container container container beVisible.
	animation := (self widgetAt: #animation) container container layout.
	start := Time millisecondClockValue.
	[t := ((Time millisecondClockValue - start) / self transitionSpeed) min: 1.
	x := self mainWindow bounds width * t.
	(self widgetAt: #slide) container container layout
		topOffset: style lineGrid * 3;
		leftOffset: style lineGrid + x - self mainWindow bounds width;
		rightOffset: style lineGrid negated;
		bottomFraction: 0;
		bottomOffset: style lineGrid * (self class lines + 3).
	animation
		topOffset: style lineGrid * 3 + (x / 2);
		leftOffset: style lineGrid + x;
		rightOffset: style lineGrid negated;
		bottomFraction: 0;
		bottomOffset: style lineGrid * (self class lines + 3).

	(self widgetAt: #slide) container container container beVisible.
	self mainWindow refresh.
	t < 1] whileTrue