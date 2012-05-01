tests - hello
testHello

	| msg buffer out in received connection random |
	msg := (ByteArray new writing encoding: #ascii) write: 'Hello'; conclusion.
	buffer := Buffer on: ByteArray new.
	connection := SSH2Connection new.
	random := SecureRandom reading.
	out := (SSH2PacketWriteStream on: buffer writing) connection: connection; random: random; initiate.
	out put: 42; flush.
	in := (SSH2PacketReadStream on: buffer reading) connection: connection; initiate.
	self assert: in peerVersion = out version.
	self assert: in get = 42.
	[	1 to: 5 do: [ :i |
			out write: msg; flush.
			received := in read: msg size.
			self assert: msg = received ].
		self assert: in rest = #[].
	] ensure: [ out close. in close ].
	random close