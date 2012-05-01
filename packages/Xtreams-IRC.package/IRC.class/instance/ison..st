commands - optional
ison: nicknames
"
   The ISON command was implemented to provide a quick and efficient
   means to get a response about whether a given nickname was currently
   on IRC. ISON only takes one (1) type of parameter: a space-separated
   list of nicks.
"
	self send: 'ISON' withArguments: nicknames