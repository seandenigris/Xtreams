private - packet processing
readIdentification

	| preamble line version |
	"We're willing to accept only so much junk before we reach the SSH version preamble"
	preamble := sourcePlain limiting: 1000.
	[	identification := ((preamble limiting: 255) ending: 10) rest.
		identification isEmpty or: [
		identification beginsWith:  #[83 83 72 45] "'SSH-' asByteArrayEncoding: #ascii" ]
	] whileFalse: [ (preamble ending: 10) -= 0 ].
	identification isEmpty ifTrue: [ self error: 'Missing Version Identification!' ].
	identification last = 13 ifTrue: [ identification := identification allButLast: 1 ].
	line := identification reading encoding: #ascii.
	line ++ 4. "Skip SSH-"
	version := (line ending: $-) rest.
	(#('2.0' '1.99') includes: version) ifFalse: [ self error: 'Version ', version, ' is not supported!' ].
	peerVersion := (line ending: [ :c | '- 	' includes: c]) rest.
	peerComment := line rest.
	connection announce: (SSH2Identification incoming: peerVersion)