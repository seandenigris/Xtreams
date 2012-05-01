accessing-channel parameters
scpFileSender: driver
"File sending is driven explicitly by the @driver block via invoking methods from the 'sending' protocol of SCP. The block gets an instance of SCP and a list of files to send. And is expected to drive the scp instance to send those files. The return value is ignored.
"
	scpFileSender := driver