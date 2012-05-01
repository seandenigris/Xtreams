An implementation MUST respond to all unrecognized messages with an SSH_MSG_UNIMPLEMENTED message in the order in which the messages were received.  Such messages MUST be otherwise ignored.  Later protocol versions may define other meanings for these message types.

Instance Variables
	packet	<ByteArray> packet sequence number of rejected message

