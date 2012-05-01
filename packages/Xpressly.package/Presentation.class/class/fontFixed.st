interface specs
fontFixed

	ExternalInterface currentPlatformID = #osx ifTrue: [ ^[ :query | query family: #('fixed') ] ].
"	Ubuntu: the 'monotype' family looks best, 'adobe' is crap
	Fedora: the 'bitstream' looks ok, adobe so so as well
"	^[ :query | query manufacturer: #('monotype' 'bitstream' 'adobe'); family: #('courier*' 'fixed') ]