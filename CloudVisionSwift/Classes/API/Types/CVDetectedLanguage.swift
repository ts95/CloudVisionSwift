//
//  CVDetectedLanguage.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVDetectedLanguage: Decodable {
    public let languageCode: String
    public let confidence: Double
}
