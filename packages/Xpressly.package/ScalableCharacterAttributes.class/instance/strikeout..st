style attributes accessing
strikeout: aBoolean

	self invalidateQueryCache.
	^defaultQuery strikeout: aBoolean