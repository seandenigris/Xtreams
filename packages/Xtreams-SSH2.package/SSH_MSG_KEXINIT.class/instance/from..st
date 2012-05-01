initialize-release
from: config

	cookie := config random read: 16.
	kex_algorithms := config kex_algorithms.
	server_host_key_algorithms := config host_key_algorithms.
	encryption_algorithms_client_to_server := config encryption_algorithms.
	encryption_algorithms_server_to_client := config encryption_algorithms.
	mac_algorithms_client_to_server := config mac_algorithms.
	mac_algorithms_server_to_client := config mac_algorithms.
	compression_algorithms_client_to_server := config compression_algorithms.
	compression_algorithms_server_to_client := config compression_algorithms.
	languages_client_to_server := config languages.
	languages_server_to_client := config languages.