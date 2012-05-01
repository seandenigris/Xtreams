api
getInputChannel
	"Get the next available channel input. The remote side must have initiated it."
	"^		<MultiplexReadStream>	new read channel substream"

	availableChannelsLock wait.
	^availableChannels reading get