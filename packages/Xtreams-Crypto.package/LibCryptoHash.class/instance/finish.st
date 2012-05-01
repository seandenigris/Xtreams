accessing
finish

	| md |
	md := ByteArray new: self digestSize.
	library EVP_DigestFinal_ex: context with: md with: nil.
	^md