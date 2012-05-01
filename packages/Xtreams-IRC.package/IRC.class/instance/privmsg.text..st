commands - channel
privmsg: target text: text
"
   PRIVMSG is used to send private messages between users, as well as to
   send messages to channels.  <msgtarget> is usually the nickname of
   the recipient of the message, or a channel name.
"
	self send: 'PRIVMSG' with: target textchunks: text