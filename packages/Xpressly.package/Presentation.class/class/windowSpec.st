interface specs
windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"

	<resource: #canvas>
	^#(#{UI.FullSpec} 
		#window: 
		#(#{UI.WindowSpec} 
			#label: 
			#(#{Kernel.UserMessage} 
				#key: #Presentation 
				#defaultString: 'Presenter' 
				#catalogID: #uiPainter ) 
			#min: #(#{Core.Point} 20 20 ) 
			#max: #(#{Core.Point} 0 0 ) 
			#bounds: #(#{Graphics.Rectangle} 768 500 1792 1100 ) ) 
		#component: 
		#(#{UI.SpecCollection} 
			#collection: #(
				#(#{UI.SubCanvasSpec} 
					#layout: #(#{Graphics.LayoutFrame} 50 0 50 0 -50 1 -50 1 ) 
					#name: #animation 
					#flags: 0 
					#majorKey: #{TextSlide} 
					#minorKey: #windowSpec 
					#clientKey: #animation ) 
				#(#{UI.SubCanvasSpec} 
					#layout: #(#{Graphics.LayoutFrame} 50 0 50 0 -50 1 -50 1 ) 
					#name: #slide 
					#flags: 0 
					#majorKey: #{TextSlide} 
					#minorKey: #windowSpec 
					#clientKey: #slide ) 
				#(#{UI.LabelSpec} 
					#layout: #(#{UI.AlignmentOrigin} 0 0.5 0 0.0 0.5 0 ) 
					#name: #title 
					#label: 'Title' ) ) ) )