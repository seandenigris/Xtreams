initialize-release
setUp
	marshaler := MessagePackMarshaler new.
	stream := ByteArray new writing.
	marshaling := stream marshaling: marshaler.
	bytes := nil.
	log := nil