Lexical
UnorderedList: bullets
	<action: 'UnorderedList'>

	^bullets inject: Text new into: [ :list :item | list , (item isCharacters ifTrue: [item] ifFalse: ['*' asText, item last]) ]