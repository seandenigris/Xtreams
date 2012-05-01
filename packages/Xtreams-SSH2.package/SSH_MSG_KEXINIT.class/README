This message starts a key exchange. After the SSH_MSG_KEXINIT message exchange, the key exchange algorithm is run.  It may involve several packet exchanges, as specified by the key exchange method.

Once a party has sent a SSH_MSG_KEXINIT message for key exchange or re-exchange, until it has sent a SSH_MSG_NEWKEYS message (Section 7.3), it MUST NOT send any messages other than:
   o  Transport layer generic messages (1 to 19) (but SSH_MSG_SERVICE_REQUEST and SSH_MSG_SERVICE_ACCEPT MUST NOT be sent);
   o  Algorithm negotiation messages (20 to 29) (but further SSH_MSG_KEXINIT messages MUST NOT be sent);
   o  Specific key exchange method messages (30 to 49).

The provisions of Section 11 apply to unrecognized messages.

Note, however, that during a key re-exchange, after sending a SSH_MSG_KEXINIT message, each party MUST be prepared to process an arbitrary number of messages that may be in-flight before receiving a SSH_MSG_KEXINIT message from the other party.

Instance Variables
	cookie	<ByteArray> (random bytes)
	kex_algorithms	<Array>
	server_host_key_algorithms	<Array>
	encryption_algorithms_client_to_server	<Array>
	encryption_algorithms_server_to_client	<Array>
	mac_algorithms_client_to_server	<Array>
	mac_algorithms_server_to_client	<Array>
	compression_algorithms_client_to_server	<Array>
	compression_algorithms_server_to_client	<Array>
	languages_client_to_server	<Array>
	languages_server_to_client	<Array>

