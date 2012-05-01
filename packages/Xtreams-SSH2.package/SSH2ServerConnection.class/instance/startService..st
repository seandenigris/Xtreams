private-services
startService: serviceID

	service := (SSH2Service allSubclasses detect: [ :c | c serviceID = serviceID ]) new.
	service connection: self