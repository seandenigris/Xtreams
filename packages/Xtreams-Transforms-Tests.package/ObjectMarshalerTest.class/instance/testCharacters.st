tests
testCharacters
	marshaling write: 'testing'.
	self analyse.
	self assert: marshaling rest = #( $t $e $s $t $i $n $g )