compiling
instanceMethodsChanged

	self withAllSubclasses do: [ :c | c initializeActionMap ]