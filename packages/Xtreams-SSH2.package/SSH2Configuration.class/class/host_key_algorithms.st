accessing-connection parameters
host_key_algorithms

	^host_key_algorithms ifNil: [
		(OS.OSHandle currentOS = #win32)
			ifTrue: [  #('ssh-rsa') ]
			ifFalse: [  #('ssh-rsa' 'ssh-dss') ] ]