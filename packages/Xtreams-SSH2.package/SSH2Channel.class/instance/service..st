initialize-release
service: aService

	service := aService.
	id := service nextID.
	outgoingWindow := nil.
	incomingWindow := WindowMax.
	closing := false.
	extendedDataIn := #()