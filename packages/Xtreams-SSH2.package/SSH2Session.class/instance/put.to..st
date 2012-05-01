accessing
put: list to: destination
"Uploads local files specified by @list to remote @destination. This facility uses simple SCP/RCP protocol in recursive mode and doesn't preserve file timestamps.
	list <String> string listing desired files/paths (separated by spaces)
	destination <String> denotes the target file/directory 
"
	self put: list to: destination using: service scpFileSender