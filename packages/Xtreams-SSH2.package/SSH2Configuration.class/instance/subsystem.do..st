accessing-channel parameters
subsystem: name do: action

	subsystems := self subsystems copy.
	subsystems at: name put: action