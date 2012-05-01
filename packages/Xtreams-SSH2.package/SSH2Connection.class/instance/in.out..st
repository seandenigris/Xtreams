initialize-release
in: read out: write

	in := SSH2PacketReadStream on: read.
	out := SSH2PacketWriteStream on: write.
	outMarshaling := out ssh2Marshaling.
	queues := Dictionary new.