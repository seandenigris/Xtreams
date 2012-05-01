initialize-release
cleanup
	"Release all the locks."
	availableChannelsLock signal.
	channelsMutex critical: [
		channels do: [:substream |
			substream == nil ifFalse: [substream closed]]]