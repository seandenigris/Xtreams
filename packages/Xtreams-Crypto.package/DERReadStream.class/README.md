Provides an over-simplified DER decoding stream adopting some predefined mapping for the obvious cases and failing otherwise (See the private protocol to get an idea of what kinds of tags can be decoded and into what). Nevertheless it is enough to decode some simpler ASN.1 structures like keys and signatures.

Instance Variables
	actions	<Array of: Symbol> maps tag values to decoding methods

