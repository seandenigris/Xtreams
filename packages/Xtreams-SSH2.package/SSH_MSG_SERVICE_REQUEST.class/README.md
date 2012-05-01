After the key exchange, the client requests a service.  The service is identified by a name.  The format of names and procedures for defining new names are defined in [SSH-ARCH] and [SSH-NUMBERS].

Currently, the following names have been reserved:

	ssh-userauth
	ssh-connection

Similar local naming policy is applied to the service names, as is applied to the algorithm names.  A local service should use the PRIVATE USE syntax of "servicename@domain".

If the server rejects the service request, it SHOULD send an appropriate SSH_MSG_DISCONNECT message and MUST disconnect.

If the server supports the service (and permits the client to use it), it MUST respond with SSH_MSG_SERVICE_ACCEPT.
Instance Variables
	service	<String> service name

