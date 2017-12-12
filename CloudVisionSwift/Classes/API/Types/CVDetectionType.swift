//
//  CVDetectionType.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public enum CVDetectionType: String, Encodable {
    case unspecified = "TYPE_UNSPECIFIED"
    case face = "FACE_DETECTION"
    case landmark = "LANDMARK_DETECTION"
    case logo = "LOGO_DETECTION"
    case label = "LABEL_DETECTION"
    case text = "TEXT_DETECTION"
    case documentText = "DOCUMENT_TEXT_DETECTION"
    case safeSearch = "SAFE_SEARCH_DETECTION"
    case imageProperties = "IMAGE_PROPERTIES"
    case cropHints = "CROP_HINTS"
    case webDetection = "WEB_DETECTION"
}
