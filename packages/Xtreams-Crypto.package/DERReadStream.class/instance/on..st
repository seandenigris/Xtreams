initialize-release
on: aSource

	super on: aSource.
	actions := Array new: 31.
	(Pragma allNamed: #tag: from: self class to: self class) do: [ :pragma |
		actions at: pragma arguments first put: pragma selector ].