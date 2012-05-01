initialize-release
client: kexinit1 server: kexinit2

	kexinit_client := kexinit1.
	kexinit_server := kexinit2.
	encryption_client_to_server := kexinit_client encryption_algorithms_client_to_server detect: [ :alg |
		kexinit_server encryption_algorithms_client_to_server includes: alg ].
	encryption_server_to_client := kexinit_client encryption_algorithms_server_to_client detect: [ :alg |
		kexinit_server encryption_algorithms_server_to_client includes: alg ].
	mac_client_to_server := kexinit_client mac_algorithms_client_to_server detect: [ :alg |
		kexinit_server mac_algorithms_client_to_server includes: alg ].
	mac_server_to_client := kexinit_client mac_algorithms_server_to_client detect: [ :alg |
		kexinit_server mac_algorithms_server_to_client includes: alg ].
	compression_client_to_server := kexinit_client compression_algorithms_client_to_server detect: [ :alg |
		kexinit_server compression_algorithms_client_to_server includes: alg ].
	compression_server_to_client := kexinit_client compression_algorithms_server_to_client detect: [ :alg |
		kexinit_server compression_algorithms_server_to_client includes: alg ].