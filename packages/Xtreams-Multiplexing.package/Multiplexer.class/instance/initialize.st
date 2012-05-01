initialize-release
initialize
	logger := nil.
	availableChannelsLock := Semaphore new.
	availableChannels := ElasticBuffer new: 10 class: Array.

	outputMutex := Semaphore forMutualExclusion.

	channelsMutex := Semaphore forMutualExclusion.
	identitiesNext := self minimumIdentity.
	channels := Array new: 32768.