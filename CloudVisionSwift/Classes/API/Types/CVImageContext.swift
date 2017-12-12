//
//  CVImageContext.swift
//  CloudVision
//
//  Created by Toni Sučić on 07.12.2017.
//

import Foundation

public struct CVImageContext: Encodable {
    public let latLongRect: CVLatLongRect
    public let languageHints: [String]
    public let cropHintsParams: CVCropHintsParams
}
