queries - user
whois: target mask: mask
"
   This command is used to query information about particular user.
   The server will answer this command with several numeric messages
   indicating different statuses of each user which matches the mask (if
   you are entitled to see them).  If no wildcard is present in the
   <mask>, any information about that nick which you are allowed to see
   is presented.
"
	self send: 'WHOIS' with: target with: mask