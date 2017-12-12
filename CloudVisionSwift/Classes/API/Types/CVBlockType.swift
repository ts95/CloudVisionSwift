//
//  CVBlockType.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public enum BlockType: String, Decodable {
    case unknown = "UNKNOWN"
    case text = "TEXT"
    case table = "TABLE"
    case picture = "PICTURE"
    case ruler = "RULER"
    case barcode = "BARCODE"
}
