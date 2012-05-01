api
closeQueue: queue

	(queues removeKey: queue ifAbsent: [ nil ]) ifNotNil: [ :name |
		queues removeKey: name ifAbsent: [].
		[ queue isEmpty ] whileFalse: [ queue next close ] ]