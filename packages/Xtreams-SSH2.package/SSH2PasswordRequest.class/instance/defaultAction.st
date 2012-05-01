private - actions
defaultAction

	^SimplePasswordDialog new
		request: 'Password for user ', parameter
		initialAnswer: ''
		onCancel: nil