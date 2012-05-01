00 introduction
introductionCoreAPI1
	<slide: 7.1 title: 'API'>
"	= common"
		Incomplete.
		stream terminal.
		stream close.
		stream isReadable; isWritable; isPositionable.

"	= reading"
		input get.
		input read: 5.
		input read: 5 into: collection.
		input read: 5 into: collection at: 2.
		input rest.

"		do:, do:separatedBy:, select:, reject:, collect:, fold:,
		detect:(ifNone:), inject:into:, groupedBy:
"