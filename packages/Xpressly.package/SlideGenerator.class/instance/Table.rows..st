Lexical
Table: header rows: rows
	<action: 'Table' arguments: #(1 2)>

	| allRows sizes out |
	allRows := (Array with: header), rows.
	sizes := allRows inject: (Array new: header size withAll: 0) into: [ :max :r || row |
		row := r reading.
		max collect: [ :m | m max: row get trimBlanks size ] ].
	out := Text new writing.
	allRows do: [ :row || max |
			max := sizes reading.
			row do: [ :c || cell | cell := c trimBlanks.
				out write: cell; tab; tab: (max get - cell size // 3) ] ]
		separatedBy: [ out cr ].
	^out conclusion