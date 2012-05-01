interface specs
windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	<resource: #canvas>
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 
			#(#{Kernel.UserMessage} 
				#key: #UnlabeledCanvas 
				#defaultString: 'Unlabeled Canvas' 
				#catalogID: #uiPainter ) 
			#bounds: #(#{Graphics.Rectangle} 481 255 1200 796 ) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.TextEditorSpec} 
					#layout: #(#{Graphics.LayoutFrame} 0 0 0 0 0 1 0 1 ) 
					#name: #text 
					#flags: 4 
					#model: #text 
					#tabable: false 
					#tabRequiresControl: false 
					#isWrapped: false ) ) ) )