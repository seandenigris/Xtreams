private
connect

	| confirmation |
	connection sendMessage: self serviceRequest.
	confirmation := connection receive: SSH_MSG_SERVICE_ACCEPT.
	(confirmation service = self serviceID) ifFalse: [ self error: 'Service confirmation invalid!' ]