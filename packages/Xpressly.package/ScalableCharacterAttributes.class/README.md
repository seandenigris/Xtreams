The following comment was copied from the original comments of ScalingCharacterAttributes

==========================================================

CharacterAttributes is a class which represents a mapping from character styles to 
fonts.  Character styles are the objects stored in the RunArray of a text--they describe
visual properties that a group of characters in the text should have.  These properties
may be as specific as the pixel size of the font to be used, or they may be as general
as a symbol like #labelFont.  In the latter case, the CharacterAttributes used by the
application would be expected to know what font was to be used when the 'labelFont'
was requested.

Character styles come in three basic flavors:  nil means that the default font should
be used; an object that is not an Array represents a change to the base font; and an
Array represents a list of character styles that should applied sequentially.  In the last
case, if two elements in the array contradict each other, the later one wins.

Simple character styles can be further subdivided.
-	If the style is an instance of Association, it represents a parameterized style.  For
	example, the association #family->'helvetica' might indicate that the font should be 
	of the Helvetica font family.  The key, #family, is expected to be a key into the
	attributes dictionary.
-	If the style is a symbol, it is expected to be a key in the attributes dictionary.
	The value in the dictionary for that key is then treated as a character style and
	applied to the current font description.  This value will frequently be a block.
-	If the style is a block, the argument count is checked:
		For 1 argument, a FontDescription is passed in
		For 2 arguments, a FontDescription and an argument are passed in
	The block then may perform arbitrary transformations on the font.
-	If the CharacterAttributes doesn't know what to do with the style, it's ignored

For example, assume that there's a CharacterAttributes with the following mapping:
	#bold		-> [:font |   font boldness: 0.7]
	#red		-> [:font |   font color: ColorValue red]
	#pixelSize	-> [:font :size |   font pixelSize: size]
	#italic		-> [:font |   font italic: true]
	#errorMsg	-> #(#bold #italic)

Then, if the character style for a Text was the value
	Array with: #red with: #errorMsg with: (#pixelSize->18)
the following lookup would occur

Lookup the Array
	Lookup #red -- set the font's color to red
	Lookup #errorMsg
		Lookup #(#bold #italic)
			Lookup #bold -- make the font be bold
			Lookup #italic -- make the font be italic
	Lookup the Association (#pixelSize->18)
		Lookup #pixelSize -- change the font's size to 18 pixels.

The result would be an 18 pixel high, red, bold, italic font.


Instance variables
	attributes		<Dictionary keys: Symbol>
					maps character styles to Blocks that perform transformations
					on a FontDescription
	defaultQuery	<FontDescription> The base font description against which the
					styles are applied
	queryCache		<Dictionary key: Object value: FontDescription>
					cache of FontDescriptions keyed by style
	policyCache		<WeakArray with: FontPolicy>
					cache of the FontPolicy against which matches were done.
					Done weakly to avoid garbage buildup.

Class variables
	QueryCacheLimit	<Integer> upper bounds on the size of each query cache


Object Reference:
A CharacterAttributes can be thought of as a lookup table for text emphases. Given an emphasis name such as #bold, it modifies the boldness setting of the default font description. The resulting font description is used by text-displaying objects to obtain the device font that most nearly matches the font description. 
A CharacterAttributes is held by a TextAttributes which, in turn, is held by a ComposedText. Applications that use only the built-in text emphases do not need to communicate directly with a CharacterAttributes. An application that has special font requirements typically creates a new instance of CharacterAttributes via #newWithDefaultAttributes. It then initializes the default font description via #setDefaultQuery:. 
Any custom text emphases are added, via #at:put:. The first argument is a symbol -- the name of the text emphasis, which is the final argument in an #emphasizeFrom:to:with: message to a ComposedText. The second argument in the #at:put: message is typically a block that alters the default font description as needed. The second argument can also be an array containing other emhasis names. The following are valid #at:put: messages: 
	aCharacterAttributes 
		at: #bold put: [ :fontDesc | fontDesc boldness: 0.7]; 
		at: #pixelSize put: [ :fontDesc :size | fontDesc pixelSize: size]; 
		at: #warning put: (Array with: #bold with: #pixelSize->24). 
The #pixelSize example above illustrates the use of a block that takes two arguments, the second argument being a parameter that is needed to implement the change to the font description. Thus, when an application applies a #pixelSize emphasis to a portion of a ComposedText, it must supply an association such as #pixelSize->24. This is similar to the built-in text emphasis named #color, which takes a paint as its parameter, such as #color->ColorValue red. 
After a CharacterAttributes has been customized in this way, it is typically used as the basis for creating a new TextAttributes, via #characterAttributes:. When the new text style is installed in a ComposedText, and portions of that ComposedText are emphasized with the custom emphases in the CharacterAttributes, the process of customizing font selection is complete. 
When a new text style is likely to be needed repeatedly, it is convenient to register it in the dictionary of text styles maintained by TextAttributes, via #styleNamed:put:. CharacterAttributes maintains a similar dictionary, in which a new character style can be registered, also via #styleNamed:put:. Typically, each custom text style calls for a custom character style with the same name -- the predefined text styles and character styles are named #default, #fixed, #large and #small. To retrieve a style from either registry, send #styleNamed: to the appropriate class. 
CharacterAttributes represents a set of portable font descriptions, meaning that it is capable of selecting a near-matching font in any operating environment. Its subclass, PlatformCharacterAttributes has both a portable font description and a font description that is tailored to a specific operating system. It enforces a preference for the platform-specific font when the application is running on that platform. That specificity is used mostly by look-and-feel policy classes -- most applications are sufficiently served by CharacterAttributes. 
Instance Variables:
	scale	<Float>	scaling factor
	scaledQuery	<FontDescription> 	query scaled by the scaling factor

