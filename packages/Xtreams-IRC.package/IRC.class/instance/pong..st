commands - misc
pong: server1
"
   PONG message is a reply to ping message.  If parameter <server2> is
   given, this message MUST be forwarded to given target.  The <server>
   parameter is the name of the entity who has responded to PING message
   and generated this message.

"
	self send: 'PONG' with: server1