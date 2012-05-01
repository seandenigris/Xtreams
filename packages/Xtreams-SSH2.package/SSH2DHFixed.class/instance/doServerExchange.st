services
doServerExchange

	| kexdh_init |
	kexdh_init := connection receive: SSH_MSG_KEXDH_INIT.
	e := kexdh_init e.
	f := self exponentiate: g.
	k := self exponentiate: e.
	self	computeHashClient: connection identificationIn
		server: connection identificationOut.
	connection sendMessage: (
		SSH_MSG_KEXDH_REPLY new	
			hostKey: connection hostKey;
			f: f;
			signature: (connection sign: h))