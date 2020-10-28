//
//  Direction.swift
//  SourceryTest
//
//  Created by James Froggatt on 24/10/2020.
//

import Foundation

protocol CaseIterable2 { }

protocol AutoDecodable: Decodable {}
protocol AutoEncodable: Encodable {}
protocol AutoCodable: AutoDecodable, AutoEncodable {}

// https://cdn.rawgit.com/krzysztofzablocki/Sourcery/master/docs/codable.html

enum Direction: CaseIterable2, AutoCodable {
	case north, south, east, west
}
enum Direction2: CaseIterable2 {
	case north, south, east, west
}
