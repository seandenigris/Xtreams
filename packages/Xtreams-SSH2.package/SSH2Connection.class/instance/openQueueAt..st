api
openQueueAt: name

	^(queues at: name ifAbsent: [ nil ])
		ifNil: [ | queue |
			queue := SharedQueue new.
			queues
				at: name put: queue;
				at: queue put: name.
			queue ]
		ifNotNil: [ self error: 'Queue is already open!' ]