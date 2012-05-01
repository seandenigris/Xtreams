libraries
libcryptoCustom
"Note that it is important that the selector of this method is first in alphabetic sort order of the library declaration methods.
This way this declaration takes precedence over the others allowing users to override the system defaults with the environment variable if needed.
"
	<library>
	^OSSystemSupport concreteClass new getVariable: 'VW_LIBCRYPTO'