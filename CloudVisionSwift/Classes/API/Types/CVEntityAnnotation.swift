//
//  CVEntityAnnotation.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVEntityAnnotation: Decodable {
    public let mid: String
    public let locale: String?
    public let description: String
    public let score: Double
    public let confidence: Double?
    public let topicality: Double?
    public let boundingPoly: CVBoundingPoly?
    public let locations: [CVLocationInfo]?
    public let properties: [CVProperty]?
}
