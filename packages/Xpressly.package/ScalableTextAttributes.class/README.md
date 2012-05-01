The following comment was copied from the original comments of ScalingTextAttributes

==========================================================

VariableSizeTextAttributes is a subclass of TextAttributes that changes its gridding and default font size as an image is moved from one graphics environment to another.  The best reason for doing this is when the density of screen pixels changes, so that a font that is suitable on one display may be much too small on another.

Instance variables:
	scale	<Point> biased towards 1.0@1.0, allows to scale dynamicly the allignment and gridding parameters
	topIndent	<Integer>	space before a paragraph
	bottomIndent	<Integer> space after a paragraph


Object Reference:
VariableSizeTextAttributes is a subclass of TextAttributes that changes its line spacing and default font size as an application is moved from one graphics environment to another. The result is that the ComposedText maintains the same size on different screens. By contrast, a ComposedText that uses a TextAttributes becomes smaller on a screen with a higher resolution because the font size is specified in pixels and pixels occupy a smaller space on a higher-resolution screen. 
A VariableSizeTextAttributes is created and modified as its parent TextAttributes is. While methods are provided for setting its parameters individually, applications typically use the inherited #gridForFont:withLead: or #gridForFont:withTopLead:bottomLead:. 
