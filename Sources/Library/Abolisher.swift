public struct Abolisher: Equatable {
	internal let input: String
	internal let pattern: Part
	internal let replace: Part

	internal indirect enum Part: Equatable {
		case part(Substring, next: Part?)
		case option([Substring], next: Part?)
	}

	public enum Error: Swift.Error, Equatable {
		case replaceMissing
		case missingClosingBracket
		case mismatchingOptions(pat: Int, rep: Int)
		case missingReplaceOptions
		case missingPatternOptions
	}
}