private
dsaPublicKey
	<algorithm: #DSA action: #key2key>
	| pqg pri pub |
	"p q g y x [count seed]  ->  y p q g [ count seed ]"
	pri := self elements reading.
	pub := Array new writing.
	pqg := pri read: 3.
	pub put: pri get "y".
	pub write: pqg.
	pri ++ 1 "x".
	pub write: pri "rest"; close.
	^self class publicKeyClass algorithm: #DSA elements: pub terminal