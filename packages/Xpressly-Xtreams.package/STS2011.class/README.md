Xtreams.STS2011 open

Chat Server Exercise:

When you connect, the server sends you nothing until you have sent a CONNECT command, then will get a re-cap of all connected users and their capabilities as will begin to receive messages as they happen. Before you have sent a CONNECT command, any other command will fail and cause you to disconnect.

The server sends you an object called ServerInstantMessage with four slots in the following order:
	sender receiver selector argument

When receiving a message from the server, if the sender is nil it is from the server. If the receiver is nil the message is global.

The client sends objects to the server called ClientInstantMessage with three slots in the following order:
	receiver selector argument

When sending a message to the server. If the receiver is nil it is for global.
If the message is greater than 1k, the server will disconnect you.

Messages to the server (as bob):
	(receiver=nil selector=#connect: argument='bob')
	(receiver=nil selector=#cando: argument=#(DIRECTPORT 2011))
	(receiver=nil selector=#say: argument='Hello Everyone!')
	(receiver=#'john@127.0.0.3' selector=#say: argument='Hello John!')
	(receiver=nil selector=#disconnect argument=nil)

Messages from the server (as john):
	(sender=#'bob@127.0.0.2' receiver=nil selector=#connect: argument=nil)
	(sender=#'bob@127.0.0.2' receiver=nil selector=#cando: argument=#(DIRECTPORT 2011))
	(sender=#'bob@127.0.0.2' receiver=nil selector=#say: argument='Hello Everyone!')
	(sender=#'bob@127.0.0.2' receiver=#'john@127.0.0.3' selector=#say: argument='Hello John!')
	(sender=#'bob@127.0.0.2' receiver=nil selector=#disconnect argument=nil)

server := ('127.0.0.1' asIPv4: 9999) connect.
[server reading marshaling do: [:message | Transcript cr; print: message]] fork.
server writing marshaling put: (ClientInstantMessage selector: #connect: argument: 'Bob')
server close.

(server writing encoding: #utf8) write: '* connect bob'; cr; flush

"from server"
[(input ending: Character cr) slicing do: [:message |
	[ :sender :receiver :command |
		Transcript writing
			cr; print: sender;
			space; print: receiver;
			space; print: command;
			space; write: message.
	] valueWithArguments:
		(((message ending: Character space) slicing limiting: 3)
			collect: #rest) asArray]
	fork.

"to server"
output write: '* SAY Hello Everyone!'; cr; flush.
