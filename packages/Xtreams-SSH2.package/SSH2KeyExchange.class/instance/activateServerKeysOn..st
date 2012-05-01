services
activateServerKeysOn: stream

	self class encryption: encryption_server_to_client do: [ :encryption :mode :encKeySize :ivSize |
		self class mac: mac_server_to_client do: [ :mac :macKeySize |
			stream
				encryption: encryption
				mode: mode
				key: ((self keyStream: $D session: connection session_id) read: encKeySize)
				iv: ((self keyStream: $B session: connection session_id) read: ivSize)
				mac: mac
				macKey: ((self keyStream: $F session: connection session_id) read: macKeySize)
				compression: compression_server_to_client ] ]