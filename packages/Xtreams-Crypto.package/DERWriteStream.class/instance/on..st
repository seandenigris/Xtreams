initialize-release
on: aSource

	super on: aSource.
	actions := Dictionary new.
	sizes := Dictionary new.
	(Pragma allNamed: #class: from: self class to: self class) do: [ :pragma |
		actions at: pragma arguments first asQualifiedReference value put: pragma selector ].
	(Pragma allNamed: #sizeOf: from: self class to: self class) do: [ :pragma |
		sizes at: pragma arguments first asQualifiedReference value put: pragma selector ].