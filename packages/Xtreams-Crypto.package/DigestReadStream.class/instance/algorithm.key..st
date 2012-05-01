initialize-release
algorithm: id key: key

	hash := HMAC new.
	hash algorithm: id key: key