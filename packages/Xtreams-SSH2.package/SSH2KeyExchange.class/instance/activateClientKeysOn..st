services
activateClientKeysOn: stream

	self class encryption: encryption_client_to_server do: [ :encryption :mode :encKeySize :ivSize |
		self class mac: mac_client_to_server do: [ :mac :macKeySize |
			stream
				encryption: encryption
				mode: mode
				key: ((self keyStream: $C session: connection session_id) read: encKeySize)
				iv: ((self keyStream: $A session: connection session_id) read: ivSize)
				mac: mac
				macKey: ((self keyStream: $E session: connection session_id) read: macKeySize)
				compression: compression_client_to_server ] ]