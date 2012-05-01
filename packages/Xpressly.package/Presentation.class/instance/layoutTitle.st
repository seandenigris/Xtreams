private
layoutTitle

	| titleView |
	titleStyle scale: style scale * 2.
	titleView := self wrapperAt: #title.
	titleView component layout topOffset: style lineGrid * 0.5