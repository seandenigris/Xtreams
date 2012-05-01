actions
print
"
	Xtreams.STS2011 print
"
	| job gc scale |
	job := Printer startPrintJobNamed: self class name, '.ps'.
	job setLandscape: true.
	scale := job extent / self class resolution.
	scale := scale x min: scale y.
	style scale: scale @ scale.
	gc := job graphicsContext.
	slides list
		do: [ :slide || ct |
			ct := ComposedText withText: slide title style: titleStyle fontPolicy: gc fontPolicy.
			ct displayOn: gc at: ((job width - ct width) @ style lineGrid) // 2.
			slide printTo: gc style: style at: style lineGrid @ (style lineGrid * 3) ]
		separatedBy: [ job newPage ].
	job close