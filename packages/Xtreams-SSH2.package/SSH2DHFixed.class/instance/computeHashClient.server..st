private
computeHashClient: clientID server: serverID
"	The hash H is computed as the HASH hash of the concatenation of the following:
	string    V_C, the client's identification string (CR and LF excluded)
	string    V_S, the server's identification string (CR and LF excluded)
	string    I_C, the payload of the client's SSH_MSG_KEXINIT
	string    I_S, the payload of the server's SSH_MSG_KEXINIT
	string    K_S, the host key
	mpint     e, exchange value sent by the client
	mpint     f, exchange value sent by the server
	mpint     K, the shared secret
"
	k := ByteArray new writing ssh2Marshaling putMpint: k; close; terminal.
	h := (ByteArray new writing hashing: 'sha1') ssh2Marshaling.
	h	putString: clientID;
		putString: serverID;
		putString: kexinit_client bytes;
		putString: kexinit_server bytes;
		putString: connection hostKey bytes;
		putMpint: e;
		putMpint: f;
		write: k; close.
	h := h destination digest.
	"k is only used concatenated with h"
	kh := k, h