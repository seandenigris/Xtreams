interface specs
fontSans

	ExternalInterface currentPlatformID = #osx ifTrue: [^[ :query | query family: #('arial') ]].
"	Ubuntu: the 'bigelow-luxisans' looks best, 'microsoft-verdana' matches the mac proportions better, 'adobe-arial' is crap
	Fedora: the 'urw-nimbus' looks ok, lucida and helvetica are awful 
"	^[ :query | query manufacturer: #('microsoft' 'bigelow' 'urw' ); family: #('luxisans' 'verdana' 'arial' 'nimbus sans*' 'lucida' 'helvetica') ]