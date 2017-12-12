//
//  CVWebEntity.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVWebEntity: Decodable {
    public let entityId: String
    public let score: Double
    public let description: Double
}
