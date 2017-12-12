//
//  CVBlock.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVBlock: Decodable {
    public let property: CVProperty
    public let boundingBox: CVBoundingPoly
    public let paragraph: [CVParagraph]
    public let blockType: BlockType
}
