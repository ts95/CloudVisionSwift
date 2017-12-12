//
//  CVFeature.swift
//  CloudVision
//
//  Created by Toni Sučić on 07.12.2017.
//

import Foundation

public struct CVFeature: Encodable {
    public let type: CVDetectionType
    public let maxResults: UInt?
}
