implementation selection
windows

	<priority: 10>
	^(OSHandle currentOS = #win32)
		and: [ Win32SystemSupport isVistaOrLater ]