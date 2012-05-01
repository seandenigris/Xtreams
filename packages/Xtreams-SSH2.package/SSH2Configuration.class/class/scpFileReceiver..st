accessing-channel parameters
scpFileReceiver: callback
"This callback is invoked for every directory entry/exit and file received. The callback can take up to six optional arguments: path, name, source, size, mode and times:

	path	<Object> whatever the current value of path is, starts with the value of the get: argument in the #get:using: invocation
	name	<String> name of the incoming file or directory, nil for end of directory
	source	<ReadStream> stream of the contents of incoming file, nil for directory start or end
	size		<Integer> size of the incoming file, bogus for directory start (usually zero), nil for directory end
	mode	<String> four characters of unix style numeric file mode (e.g. 0644) for incoming file or starting directory, nil for directory end
	times	<Array of: Timestamp> two element array containing mtime and atime (in that order) of incoming file or starting directory, nil if wasn't provided (-p option wasn't used)

The three callback cases can be distinguished by the values of name and source. If source is not nil it's a file, otherwise if name is nil it's directory end otherwise it's directory start. The return value of the callback is ignored for files, but for directory start and end it will be the new value of path for subsequent callback invocations. The intent is to allow directory entry/exit to amend the path value if it's useful. See the example below or the class side file receiving default used to handle downloads into files.
"
	scpFileReceiver := callback