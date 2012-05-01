slide elements
image: selector origin: array

	| image layout spec extent |
	image := presenter perform: selector.
	extent := image extent.
	layout := (#(#{Graphics.LayoutSizedOrigin}), array, (Array with: extent x + 4 with: extent y + 4)) decodeAsLiteralArray. 
	spec := ArbitraryComponentSpec new layout: layout; component: image; flags: 0.
	builder add: spec