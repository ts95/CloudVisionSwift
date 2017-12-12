//
//  CVProperty.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVProperty: Decodable {
    public let name: String
    public let value: String
    public let uint64Value: String
}
