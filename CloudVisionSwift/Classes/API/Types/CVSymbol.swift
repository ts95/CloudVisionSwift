//
//  CVSymbol.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVSymbol: Decodable {
    public let property: CVTextProperty
    public let boudningBox: CVBoundingPoly
    public let text: String
}
