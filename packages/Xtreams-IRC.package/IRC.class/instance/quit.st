commands - connection
quit
"
   A client session is terminated with a quit message.  The server
   acknowledges this by sending an ERROR message to the client.
"
	self send: 'QUIT'