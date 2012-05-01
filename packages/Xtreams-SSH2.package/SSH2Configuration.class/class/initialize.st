class initialization
initialize

	"these are initialized explicitly so that nil can mean disabled"
	execEvaluator := self defaultExecEvaluator.
	shellEvaluator := self defaultShellEvaluator.
	scpFileReceiver := SCP receiveFilesRecursively.
	scpFileSender := SCP sendFilesRecursively