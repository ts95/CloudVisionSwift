//
//  CVCropHint.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVCropHint: Decodable {
    public let boundingPoly: CVBoundingPoly
    public let confidence: Double
    public let importanceFraction: Double
}
