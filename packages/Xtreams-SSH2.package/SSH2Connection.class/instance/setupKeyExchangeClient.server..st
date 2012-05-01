private-key exchange
setupKeyExchangeClient: kexinit_client server: kexinit_server

	"this will need to change if we start supporting encryption host keys,
	but the basic spec only uses signing keys so this will do."
	host_key := kexinit_server server_host_key_algorithms detect: [ :alg | kexinit_client server_host_key_algorithms includes: alg ].
	kex := kexinit_client kex_algorithms detect: [ :alg | kexinit_server kex_algorithms includes: alg ].
	kex := (SSH2KeyExchange named: kex)
		connection: self;
		client: kexinit_client server: kexinit_server;
		yourself