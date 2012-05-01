commands - connection
oper: opername password: password
"
   A normal user uses the OPER command to obtain operator privileges.
"
	self send: 'OPER' with: opername with: password