initialize-release
setUp
	marshaler := ObjectMarshaler new.
	stream := ByteArray new writing.
	marshaling := stream marshaling: marshaler.
	bytes := nil.
	log := nil