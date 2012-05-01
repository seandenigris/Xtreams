private-key exchange
verify: signature of: bytes

	(self configuration keys verify: signature of: bytes with: host_key) ifFalse: [
		self error: 'Host signature invalid!' ]