initialize-release
on: aStreamable block: aBlock
	super on: aStreamable.
	block := aBlock.
	incompleteCount := nil.
	closeBlock := [ :destinationStream | destinationStream close].
	buffer := ElasticBuffer new: DefaultBufferSize class: aStreamable contentsSpecies.
	self drainBuffer