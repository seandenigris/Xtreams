queries - server
lusers: mask
"
   The LUSERS command is used to get statistics about the size of the
   IRC network.  If no parameter is given, the reply will be about the
   whole net.
"
	self send: 'LUSERS' with: mask