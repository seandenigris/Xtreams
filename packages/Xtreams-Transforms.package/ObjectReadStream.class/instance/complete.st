private
complete
	1 to: objects size by: 2 do: [:index |
		objects at: index put: false.
		objects at: index + 1 put: nothing].
	objects at: 2 put: Transcript