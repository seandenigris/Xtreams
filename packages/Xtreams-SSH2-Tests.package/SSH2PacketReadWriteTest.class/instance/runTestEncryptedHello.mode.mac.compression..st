tests - hello
runTestEncryptedHello: cipher mode: mode mac: mac compression: compression

	| msg buffer out in received key iv macKey connection random |
	msg := (ByteArray new writing encoding: #ascii) write: 'Hello'; close; terminal.
	key := ByteArray withAll: (1 to: 16).
	iv := mode ifNotNil: [ ByteArray withAll: (1 to: 16) ].
	macKey := ByteArray withAll: (1 to: 20).
	buffer := Buffer on: ByteArray new.
	connection := SSH2Connection new.
	random:= SecureRandom reading.
	out := (SSH2PacketWriteStream on: buffer writing) connection: connection; random: random; initiate.
	out write: msg; flush.
	in := (SSH2PacketReadStream on: buffer reading) connection: connection; initiate.
	self assert: in peerVersion = out version.
	received := in read: msg size.
	self assert: msg = received.	
	[	out encryption: cipher mode: mode key: key iv: iv mac: mac macKey: macKey compression: compression.
		out write: msg
	] ensure: [ out close ].
	[ 	in encryption: cipher mode: mode key: key iv: iv mac: mac macKey: macKey compression: compression.
		received := in rest.
	] ensure: [ in close ].
	random close.
	self assert: msg = received