private
analyse
	"Run an analysis on the stream contents to ensure it has integrity"
	bytes := stream conclusion.
	log := String new writing.
	(ObjectAnalyseStream on: bytes reading marshaler: marshaler class new) do: [:each | log write: each].
	log := log conclusion.
	marshaling := bytes reading marshaling: marshaler class new