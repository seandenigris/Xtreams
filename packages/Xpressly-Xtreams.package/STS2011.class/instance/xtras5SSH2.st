14 xtras
xtras5SSH2
"	After starting the server run the following:
		ssh -p2222 localhost 3 + 4
		scp -P2222 <file> localhost:<subdir>/
"
	<slide: 5 title: 'Xtras - SSH2'>
	keys := SSH2KeysTest sampleKeys.
	config := SSH2Configuration new keys: keys.
	server := ('-thishost-' asIPv4: 2222) listen accepting.
	[	(SSH2ServerConnection on: server get)
			configuration: config;
			when: SSH2Announcement
			do: [ :m | Transcript cr; print: m ];
			accept;
			waitForDisconnect;
			close
	] ensure: [ server close. keys release ]