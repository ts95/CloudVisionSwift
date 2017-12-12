//
//  CVLandmark.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVLandmark: Decodable {
    public let type: CVFaceType
    public let position: CVPosition
}
