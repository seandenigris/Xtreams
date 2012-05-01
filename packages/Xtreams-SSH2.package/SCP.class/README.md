Implements simple RCP protocol employed by the scp command utility to transfer files and directories over ssh. It works in two modes, receiving and sending.

Receiving mode is invoked with the #get:using: method that takes a destination and a callback block as arguments. The callback is invoked for every directory entry/exit and file received. The callback can take up to six optional arguments: path, name, source, size, mode and times:

	path	<Object> whatever the current value of path is, starts with the value of the get: argument in the #get:using: invocation
	name	<String> name of the incoming file or directory, nil for end of directory
	source	<ReadStream> stream of the contents of incoming file, nil for directory start or end
	size		<Integer> size of the incoming file, bogus for directory start (usually zero), nil for directory end
	mode	<String> four characters of unix style numeric file mode (e.g. 0644) for incoming file or starting directory, nil for directory end
	times	<Array of: Timestamp> two element array containing mtime and atime (in that order) of incoming file or starting directory, nil if wasn't provided (-p option wasn't used)

The three callback cases can be distinguished by the values of name and source. If source is not nil it's a file, otherwise if name is nil it's directory end otherwise it's directory start. The return value of the callback is ignored for files, but for directory start and end it will be the new value of path for subsequent callback invocations. The intent is to allow directory entry/exit to amend the path value if it's useful. See the example below or the class side file receiving default used to handle downloads into files.

Sending needs to be driven explicitly by invoking methods from the 'sending' protocol. See example below. There's no callback involved but it is integrated into the session commands via a "driver" block which gets an instance of this class and a list of files to send. Again you can find the default driver block used for file uploads on the class side.

The external scp command can be invoked without involvement of ssh with special options. Option -f makes it send the files encapsulated in the protocol records to its standard output. So as a quick test of a custom callback, we can invoked this mode and consume the output as follows:

ExternalProcess
	execute: 'scp' arguments: #('-qprf' 'some list of files in the working directory here')
	do: [ :rs :ws |
		(SCP new in: rs reading out: ws writing)
			get: '.' asFilename using: [ :path :name :source :size :mode :times |
				source
					ifNil: [ name ifNil: [ path directory ] ifNotNil: [ path / name ] ]
					ifNotNil: [ Transcript writing cr; write: path asString; space; write: name; space; print: size ] ] ]
	errorStreamDo: [ :rs | ]

If the source argument of the callback is nil, it means we're processing a directory entry or exit and we need to return new value for the path argument that will be passed to subsequent invocations of the callback, here we simply append or remove the tail on the path. If the callback is invoked for a file, source provides a read stream that can be used to read the file contents (usually storing it somewhere). It can be ignored although it doesn't mean the file contents aren't sent, whatever is left in the source after the callback returns is received and thrown away (so that processing can advance to the next file).

We can test sending mode as well by employing the inverse option -t of the scp command. In this mode the command receives RCP from its standard input interprets it and creates files from what it receives.

ExternalProcess
	execute: 'scp' arguments: #('-rt' 'some target directory somewhere')
	do: [ :rs :ws |
		(SCP new in: rs reading out: ws writing)
			startDirectory: 'test';
			startDirectory: 'sub';
			file: 'file1' source: 'hello' reading size: 5;
			file: 'file2' source: 'world' reading size: 5;
			endDirectory;
			file: 'file3' source: 'bye' reading size: 3;
			endDirectory;
			close ]
	errorStreamDo: [ :rs | ]

Instance Variables
	session	<SSH2Session>
	in	<ReadStream>
	out	<WriteStream>
	path	<Object> used to pass current value of 'path' between callback invocations

Shared Variables
	Epoch	<SmallInteger> caches start of Unix epoch in seconds (needed for mtime/atime conversions)

