Used by the shell command to interpret keyboard input sent by the client.

Instance Variables
	pty	<SSH2ChannelPty> the pty-req parameters from the client
	input	<ReadStream> 
	output	<WriteStream> 
	prompt	<String> the prompt string
	line	<WriteStream> current line being edited

Class Instance Variables
	prompt	<String> default prompt string
	controlActions	<Dictionary key: SmallInteger value: Symbol> maps control codes to corresponding methods
	escapeActions	<Dictionary> maps escape codes to corresponding methods

