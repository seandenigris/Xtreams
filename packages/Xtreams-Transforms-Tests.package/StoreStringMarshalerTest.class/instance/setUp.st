initialize-release
setUp
	marshaler := StoreStringMarshaler new.
	stream := ByteArray new writing.
	marshaling := stream marshaling: marshaler.
	bytes := nil.
	log := nil