//
//  CVColorInfo.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVColorInfo: Decodable {
    public let color: CVColor
    public let score: Double
    public let pixelFraction: Double
}
