commands - channel
notice: target text: text
"
   The NOTICE command is used similarly to PRIVMSG.  The difference
   between NOTICE and PRIVMSG is that automatic replies MUST NEVER be
   sent in response to a NOTICE message.  This rule applies to servers too.
"
	self send: 'NOTICE' with: target textchunks: text