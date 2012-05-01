procedures
RtlMoveMemory: Destination with: Source with: Length
	<C: void RtlMoveMemory(PVOID Destination, const VOID* Source, SIZE_T Length)>
	^self externalAccessFailedWith: _errorCode