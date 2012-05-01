private
updateSlide: transition

	| slideBuilder slide |

	(self widgetAt: #slide) container container container beInvisible.

	slide := self slide.
	slide builder: nil.

	slideBuilder := builder newSubBuilder.
	(self widgetAt: #slide)
		client: slide
		spec: #windowSpec
		builder: slideBuilder.
	slide postOpenWith: slideBuilder.

	transition value.
	(self widgetAt: #slide) container container container beVisible.
	(self widgetAt: #animation) container container container beInvisible.

	slide builder: nil.
	slideBuilder := builder newSubBuilder.
	(self widgetAt: #animation)
		client: slide
		spec: #windowSpec
		builder: slideBuilder.
	slide postOpenWith: slideBuilder.

	self mainWindow refresh