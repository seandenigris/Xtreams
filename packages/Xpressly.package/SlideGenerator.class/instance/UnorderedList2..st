Lexical
UnorderedList2: bullets
	<action: 'UnorderedList2'>

	^bullets inject: Text new into: [ :list :item | list , (item isCharacters ifTrue: [item] ifFalse: ['	*' asText, item last]) ]