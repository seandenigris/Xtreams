private
layoutSlide

	| contentsView contentsLayoutView lineHeight |
	contentsView := self widgetAt: #slide.
	contentsLayoutView := contentsView container container.
	lineHeight := style lineGrid.
	contentsLayoutView layout
		topOffset: lineHeight * 3;
		bottomFraction: 0;
		bottomOffset: lineHeight * (self class lines + 3);
		leftOffset: lineHeight;
		rightOffset: lineHeight negated.
	self slide ifNotNil: [ :slide | slide boundsChanged ].