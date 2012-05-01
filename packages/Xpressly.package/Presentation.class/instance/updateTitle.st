private
updateTitle

	| titleView |
	titleView := self wrapperAt: #title.
	titleView widget label: (Label with: (Text string: self slide title emphasis: #title) attributes: titleStyle).

	"To ensure that the LayoutWrapper of the titleView actually centers the text, the LayoutWrapper needs to know to relayout.
	 The only sane way to make it relayout is to tell it through its parent components that the bounds have changed. That's what
	 the #refresh method on ScheduledWindow does."
	self mainWindow refresh