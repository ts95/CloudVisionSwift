//
//  CVLikelihood.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public enum CVLikelihood: String, Decodable {
    case unknown = "UNKNOWN"
    case veryUnlikely = "VERY_UNLIKELY"
    case unlikely = "UNLIKELY"
    case possible = "POSSIBLE"
    case likely = "LIKELY"
    case veryLikely = "VERY_LIKELY"
}
