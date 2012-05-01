api
closeQueueAt: name

	(queues removeKey: name ifAbsent: [ nil ]) ifNotNil: [ :queue |
		queues removeKey: queue ifAbsent: [].
		[ queue isEmpty ] whileFalse: [ queue next close ] ]