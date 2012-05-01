interface specs
style

	| lineHeight defaultQuery |
	lineHeight := (self resolution y / (self lines + 4)) ceiling.
	defaultQuery := FontDescription new pixelSize: lineHeight; yourself.
	self fontSerif value: defaultQuery.
	^ScalableTextAttributes new
		setCharacterAttributes: (ScalableCharacterAttributes new
			setDefaultQuery: defaultQuery;
			at: #bold put: [:query | query boldness: 0.7];
			at: #italic put: [:query | query italic: true];
			at: #underline put: [:query | query underline: true];
			at: #strikeout put: [:query | query strikeout: true];
			at: #color put: [:query :color | query color: color];
			at: #fixed put: self fontFixed;
			at: #code put: self fontSans;
			at: #pixelSize put: [:query :size | query pixelSize: size];
			at: #title put: [:query | query color: ColorValue navy ]; 
			at: #sub put: [:query || size |
				size := query pixelSize.
				query pixelSize: (size * 3 // 4 max: 1); subscript: true ];
			at: #sup put: [:query || size |
				size := query pixelSize.
				query pixelSize: (size * 3 // 4 max: 1); superscript: true ];
			yourself);
		lineGrid: lineHeight;
		baseline: lineHeight * 0.75;
		useTabs: (Array with: lineHeight * 1.5);
		yourself