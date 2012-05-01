api-pubkey
exportAsymmetricKey: key into: blob type: algorithm public: boolean

	| status |
	((status := self BCryptExportKey: key with: nil
					with: (self blobIdFor: algorithm public: boolean)
					with: blob with: blob size with: outputLength with: 0
	) = 0) ifFalse: [ self errorStatus: status ].
	^outputLength contents