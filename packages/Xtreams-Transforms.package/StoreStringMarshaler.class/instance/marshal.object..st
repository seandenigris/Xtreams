api
marshal: writing object: object
	| storeString |
	storeString := object storeString.
	(writing encoding: encoding)
		setLineEndLF;
		print: storeString size + 1;
		cr;
		write: storeString;
		cr