//
//  CVAnnotateImageResponse.swift
//  CloudVision
//
//  Created by Toni Sučić on 07.12.2017.
//

import Foundation

public struct CVAnnotateImageResponse: Decodable {
    public let faceAnnotations: [CVFaceAnnotation]?
    public let landmarkAnnotations: [CVEntityAnnotation]?
    public let logoAnnotations: [CVEntityAnnotation]?
    public let labelAnnotations: [CVEntityAnnotation]?
    public let textAnnotations: [CVEntityAnnotation]?
    public let fullTextAnnotation: CVTextAnnotation?
    public let safeSearchAnnotation: CVSafeSearchAnnotation?
    public let imagePropertiesAnnotation: CVImageProperties?
    public let cropHintsAnnotation: CVCropHintsAnnotation?
    public let webDetection: CVWebDetection?
    public let error: CVStatus
}
