private-action map
initializeActionMap

	actionMap := 
		(Pragma allNamed: #algorithm:action: from: self to: PublicKey)
			inject: IdentityDictionary new into: [ :map :pragma |
				(map at: pragma arguments first ifAbsentPut: [ IdentityDictionary new ])
					at: pragma arguments last put: pragma selector.
				map ]