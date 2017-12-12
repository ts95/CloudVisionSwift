//
//  CVTextProperty.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVTextProperty: Decodable {
    public let detectedLanguages: [CVDetectedLanguage]
    public let detectedBreak: [CVDetectedBreak]
}
