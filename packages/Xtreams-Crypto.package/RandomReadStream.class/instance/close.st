initialize-release
close

	| saved |
	source release.
	saved := cache.
	cache := nil.
	saved == nil ifFalse: [ saved recycle ].