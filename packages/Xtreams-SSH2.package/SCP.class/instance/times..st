sending
times: times

	| mtime atime |
	mtime := TimeZone default localToUniversal: times first.
	mtime := mtime asSeconds - Epoch.
	out print: mtime; space; print: 0.
	atime := TimeZone default localToUniversal: times last.
	atime := atime asSeconds - Epoch.
	out print: mtime; space; print: 0; cr