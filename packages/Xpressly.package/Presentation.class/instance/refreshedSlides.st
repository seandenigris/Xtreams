private
refreshedSlides

	| pragmas |
	pragmas := Pragma allNamed: #slide:title: from: self class to: Presentation.
	pragmas := pragmas groupedBy: [ :p | p methodDefinition protocol ].
	^(pragmas keys sorted inject: List new into: [ :sorted :protocol |
		sorted, ((pragmas at: protocol) sort: [ :a :b | a arguments first < b arguments first ]) ]
	) collect: [ :pragma || slide other |
		slide := TextSlide presenter: self title: pragma arguments last source: pragma methodDefinition sourceCode.
		other := pragma method attributeMessages reject: [ :e | e selector == #slide:title: ].
		other isEmpty ifFalse: [ slide other: other ].
		slide ]