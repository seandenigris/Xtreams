14 xtras
xtras2Examples
	<slide: 2 title: 'Xtras - Examples'>
"	= hashing"
	(ObjectMemory imageFilename reading
		hashing: 'MD5'
	) -= 0; close; digest.
	
"	= encryption"
	key := random read: 16.
	((String new writing
		encodingBase64
		encrypting: 'RC4' key: key)
		compressing
		encoding: #utf8
	)	write: Object comment;
		conclusion.