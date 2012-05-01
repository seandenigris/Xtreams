initialize-release
writeOn: stream

	"we need to capture the bytes"
	bytes := ByteArray new writing.
	(stream doing: [ :b | bytes put: b ]) ssh2Marshaling
		put: self msgID;
		write: cookie;
		putNameList: kex_algorithms;
		putNameList: server_host_key_algorithms;
		putNameList: encryption_algorithms_client_to_server;
		putNameList: encryption_algorithms_server_to_client;
		putNameList: mac_algorithms_client_to_server;
		putNameList: mac_algorithms_server_to_client;
		putNameList: compression_algorithms_client_to_server;
		putNameList: compression_algorithms_server_to_client;
		putNameList: languages_client_to_server;
		putNameList: languages_server_to_client;
		putBoolean: false;
		putUint32: 0.
	bytes := bytes close; terminal.