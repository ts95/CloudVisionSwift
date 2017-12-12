//
//  CloudVisionError.swift
//  CloudVision
//
//  Created by Toni Sučić on 07.12.2017.
//

import Foundation

enum CloudVisionError: Error {
    case unknown
    case failedToDecodeImage
    case failedToEncodeRequest
    case failedToDecodeRequest
    case invalidCredentials
    case requestSizeExceeded
    case imageDataSizeExceeded
    case imagesPerRequestExceeded
}
