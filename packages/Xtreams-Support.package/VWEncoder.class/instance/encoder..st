initialize-release
encoder: anEncoder

	skipRecord := PositionRecord new.
	encoder := anEncoder.
	encoder skipRecord: skipRecord.