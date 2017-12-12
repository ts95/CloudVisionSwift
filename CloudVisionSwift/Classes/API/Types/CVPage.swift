//
//  CVPage.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVPage: Decodable {
    public let property: CVTextProperty
    public let width: Double
    public let height: Double
    public let blocks: [CVBlock]
}
