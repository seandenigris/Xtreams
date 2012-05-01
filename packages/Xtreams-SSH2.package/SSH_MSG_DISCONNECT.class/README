This message causes immediate termination of the connection.  All implementations MUST be able to process this message; they SHOULD be able to send this message.

The sender MUST NOT send or receive any data after this message, and the recipient MUST NOT accept any data after receiving this message. The Disconnection Message 'description' string gives a more specific explanation in a human-readable form.  The Disconnection Message 'reason code' gives the reason in a more machine-readable format (suitable for localization), and can have the values as displayed in the table below.  Note that the decimal representation is displayed in this table for readability, but the values are actually uint32 values.

Instance Variables
	code	<SmallInteger> reason code
	description	<String> reason description
	language	<String> language tag [RFC 3066]

