//
//  CVWebDetection.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVWebDetection: Decodable {
    public let webEntities: [CVWebEntity]?
    public let fullMatchingImages: [CVWebImage]?
    public let partialMatchingImages: [CVWebImage]?
    public let pagesWithMatchingImages: [CVWebPage]?
    public let visuallySimilarImages: [CVWebImage]?
}
