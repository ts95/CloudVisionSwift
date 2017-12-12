//
//  CVTextAnnotation.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVTextAnnotation: Decodable {
    public let pages: [CVPage]
    public let text: String
}
