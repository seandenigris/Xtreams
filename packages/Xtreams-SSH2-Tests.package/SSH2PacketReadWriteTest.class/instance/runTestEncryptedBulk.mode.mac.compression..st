tests - bulk
runTestEncryptedBulk: cipher mode: mode mac: mac compression: compression

	| msg buffer out in received key iv macKey repetitions connection random |
	repetitions := 100.
	msg := (ByteArray new writing encoding: #ascii) write: Object comment; close; terminal.
	key := ByteArray withAll: (1 to: 16).
	iv := mode ifNotNil: [ ByteArray withAll: (1 to: 16) ].
	macKey := ByteArray withAll: (1 to: 20).
	buffer := ElasticBuffer on: ByteArray new.
	connection := SSH2Connection new.
	random := SecureRandom reading.
	out := (SSH2PacketWriteStream on: buffer writing) connection: connection; random: random; initiate.
	out write: #[1]; flush.
	in := (SSH2PacketReadStream on: buffer reading) connection: connection; initiate.
	self assert: in peerVersion = out version.
	received := in read: 1.
	self assert: received = #[1].
	[	out encryption: cipher mode: mode key: key iv: iv mac: mac macKey: macKey compression: compression.
		1 to: repetitions do: [ :i | out write: msg; flush ].
	] ensure: [ out close ].
	[ 	in encryption: cipher mode: mode key: key iv: iv mac: mac macKey: macKey compression: compression.
		1 to: repetitions do: [ :i |
			received := in read: msg size.
			self assert: msg = received ].
		self assert: in rest = #[]
	] ensure: [ in close ].
	random close.
	self assert: in packetNumber = out packetNumber.