initialize-release
directTunnelTo: host port: port

	request := SSH2ChannelOpenTunnelDirect new host: host port: port