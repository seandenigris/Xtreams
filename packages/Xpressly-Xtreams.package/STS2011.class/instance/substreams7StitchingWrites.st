08 substreams
substreams7StitchingWrites
	<slide: 7 title: 'Stitching Writes'>
	output := ByteArray new writing.
	buffer := RingBuffer on: (ByteArray new: 5).
	[	(buffer writing limiting: buffer cacheSize)
			closeBlock: [
				output put: buffer readSize;
					write: buffer ];
			yourself
	] reading stitching
		write: (1 to: 12);
		close.
	output conclusion