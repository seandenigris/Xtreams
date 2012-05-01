services
doClientExchange

	| kexdh_reply |
	e := self exponentiate: g.
	connection sendMessage: (SSH_MSG_KEXDH_INIT new e: e).
	kexdh_reply := connection receive: SSH_MSG_KEXDH_REPLY.
	connection receivedHostKey: kexdh_reply hostKey.
	f := kexdh_reply f.
	k := self exponentiate: f.
	self	computeHashClient: connection identificationOut
		server: connection identificationIn.
	connection verify: kexdh_reply signature of: h