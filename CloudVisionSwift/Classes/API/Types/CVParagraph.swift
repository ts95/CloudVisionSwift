//
//  CVParagraph.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVParagraph: Decodable {
    public let textProperty: CVTextProperty
    public let boundingBox: CVBoundingPoly
    public let words: [CVWord]
}
