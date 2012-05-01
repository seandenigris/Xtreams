private
analyse
	bytes := stream conclusion.
	log := (bytes reading encoding: #utf8) rest.
	marshaling := bytes reading marshaling: marshaler class new