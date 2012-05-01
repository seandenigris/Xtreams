14 xtras
xtras6SSH2
"	Needs a running server and local .ssh/ with keys
"
	<slide: 6 title: 'Xtras - SSH2'>
	home := '$(HOME)' asLogicalFileSpecification asFilename.
	user := home tail.
	keys := SSH2Keys fromUser: home.
	config := SSH2Configuration new keys: keys.
	client := ('localhost' asIPv4: 22) connect.
	client := SSH2ClientConnection on: client.
	client configuration: config.
	client when: SSH2Announcement
			do: [ :m | Transcript cr; print: m ].
	[	service := client connect: user.
		session := service session.
		[	session exec: 'ls -l'
		] ensure: [ session close ]
	] ensure: [ client close. keys release ]