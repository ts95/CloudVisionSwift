//
//  CVAnnotateImageRequest.swift
//  CloudVision
//
//  Created by Toni Sučić on 07.12.2017.
//

import Foundation

public struct CVAnnotateImageRequest: Encodable {
    public let image: CVImage
    public let features: [CVFeature]
    public let imageContext: CVImageContext?
}
