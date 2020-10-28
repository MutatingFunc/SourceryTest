// Generated using Sourcery 1.0.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension Direction {

    enum CodingKeys: String, CodingKey {
        case north
        case south
        case east
        case west
    }

    internal init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let enumCase = try container.decode(String.self)
        switch enumCase {
        case CodingKeys.north.rawValue: self = .north
        case CodingKeys.south.rawValue: self = .south
        case CodingKeys.east.rawValue: self = .east
        case CodingKeys.west.rawValue: self = .west
        default: throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "Unknown enum case '\(enumCase)'"))
        }
    }

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .north: try container.encode(CodingKeys.north.rawValue)
        case .south: try container.encode(CodingKeys.south.rawValue)
        case .east: try container.encode(CodingKeys.east.rawValue)
        case .west: try container.encode(CodingKeys.west.rawValue)
        }
    }

}
