class initialization
initializeIdentification

	| identification |
	identification := ByteArray new writing encoding: #ascii.
	identification write: 'SSH-2.0-'; write: SoftwareVersion.
	IdentificationComment ifNotNil: [ :comment | identification space; write: comment ].
	Identification := identification close; terminal