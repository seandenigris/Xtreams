initialize-release
initialize: aCacheLimit
	mutex := Semaphore forMutualExclusion.
	recycled := IdentityDictionary new.
	IntegerArray allSubclassesDo: [:aClass | recycled at: aClass put: (Array new: aCacheLimit)].
	CharacterArray allSubclassesDo: [:aClass | recycled at: aClass put: (Array new: aCacheLimit)].
	recycled at: InterpretedBytes put: (Array new: aCacheLimit)