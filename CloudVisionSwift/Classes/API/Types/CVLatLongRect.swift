//
//  CVLatLongRect.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVLatLongRect: Encodable {
    public let minLatLong: CVLatLng
    public let maxLatLong: CVLatLng
}
