accessing
controlAction: code with: editor

	^editor perform: (controlActions at: code ifAbsent: ["ignore and continue reading the line" ^true])