Lexical
UnorderedList3: bullets
	<action: 'UnorderedList3'>

	^bullets inject: Text new into: [ :list :item | list , (item isCharacters ifTrue: [item] ifFalse: ['		*' asText, item last]) ]