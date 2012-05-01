interface specs
fontSerif

	"Note: arial looks -fantaistc- on mac, but not so great on linux"
	ExternalInterface currentPlatformID = #osx ifTrue: [^[ :query | query family: #('arial') ]].
"	Ubuntu: the 'bitstream' family looks best, 'adobe' is crap
	Fedora: the 'bitstream' looks ok, adobe so so as well
"	^[ :query | query manufacturer: #('bitstream' '*'); family: #('utopia*' 'times*'  '*') ]