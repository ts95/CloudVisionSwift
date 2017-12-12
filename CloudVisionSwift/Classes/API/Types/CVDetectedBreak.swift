//
//  CVDetectedBreak.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVDetectedBreak: Decodable {
    public let type: CVBreakType
    public let isPrefix: Bool
}
