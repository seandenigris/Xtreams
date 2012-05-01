api
tunnelTo: queue
"This can be used to create a tunnel to an Xtreams server that has a queue named <queue> open (see #openQueueAt:). There should be a process there that watches the queue and serves the established tunnels.
	^<SSH2Tunnel>
"
	^self tunnelTo: queue port: 65536