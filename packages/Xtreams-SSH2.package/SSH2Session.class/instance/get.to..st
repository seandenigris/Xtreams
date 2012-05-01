accessing
get: list to: destination
"Downloads remote files specified by @list into local @destination. This facility uses simple SCP/RCP protocol in recursive mode and doesn't preserve file timestamps.
	list <String> string listing desired files/paths
	destination <String | Filename> denotes the target file/directory 
"
	self get: list to: destination asFilename using: service scpFileReceiver