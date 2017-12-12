//
//  CVImageSource.swift
//  CloudVision
//
//  Created by Toni Sučić on 07.12.2017.
//

import Foundation

public struct CVImageSource: Encodable {
    let gcsImageUri: String?
    let imageUri: String?
}
