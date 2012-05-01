interface opening
postBuildWith: aBuilder

	super postBuildWith: aBuilder.
 	other ifNotNil: [ :messages |
		messages do: [ :message | self perform: message selector withArguments: message arguments ] ]