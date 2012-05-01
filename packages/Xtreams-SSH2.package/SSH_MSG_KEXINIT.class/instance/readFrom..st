initialize-release
readFrom: stream

	"we need to capture the bytes"
	| tee |
	bytes := ByteArray new writing.
	bytes put: self msgID.
	tee := (stream doing: [ :b | bytes put: b ]) ssh2Marshaling.
	super readFrom: tee.
	cookie := tee read: 16.
	kex_algorithms := tee getNameList.
	server_host_key_algorithms := tee getNameList.
	encryption_algorithms_client_to_server := tee getNameList.
	encryption_algorithms_server_to_client := tee getNameList.
	mac_algorithms_client_to_server := tee getNameList.
	mac_algorithms_server_to_client := tee getNameList.
	compression_algorithms_client_to_server := tee getNameList.
	compression_algorithms_server_to_client := tee getNameList.
	languages_client_to_server := tee getNameList.
	languages_server_to_client := tee getNameList.
	tee getBoolean ifTrue: [ self error: 'Cannot read guessed kex packet yet!' ].
	tee getUint32.
	bytes := bytes close; terminal