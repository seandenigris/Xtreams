utility
bn2lpi: bnPointer

	^(self bn2bin: bnPointer) reverse changeClassTo: LargePositiveInteger; yourself