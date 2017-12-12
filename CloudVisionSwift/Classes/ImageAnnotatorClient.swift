//
//  ImageAnnotatorClient.swift
//  CloudVision
//
//  Created by Toni Sučić on 07.12.2017.
//

import UIKit

open class ImageAnnotatorClient {

    private let api: CloudVisionApi

    public init(apiKey: String) {
        self.api = CloudVisionApi(apiKey: apiKey)
    }

    public func annotateImage(request: CVAnnotateImageRequest, result: @escaping ImageRequestResult) {
        api.annotateImageRequest(request, result: result)
    }

    private func singleAnnotateImage(_ type: CVDetectionType, image: CVImage, imageContext: CVImageContext? = nil,
                                    maxResults: UInt? = nil, result: @escaping ImageRequestResult) {
        let features = [CVFeature(type: type, maxResults: maxResults)]
        let request = CVAnnotateImageRequest(image: image, features: features, imageContext: imageContext)
        annotateImage(request: request, result: result)
    }

    public func cropHints(image: CVImage, imageContext: CVImageContext? = nil,
                          maxResults: UInt? = nil, result: @escaping (CVCropHintsAnnotation?, Error?) -> Void) {
        singleAnnotateImage(.cropHints, image: image, imageContext: imageContext, maxResults: maxResults, result: { response, error in
            result(response?.responses.first?.cropHintsAnnotation, error)
        })
    }

    public func documentTextDetection(image: CVImage, imageContext: CVImageContext? = nil,
                                      maxResults: UInt? = nil, result: @escaping (CVTextAnnotation?, Error?) -> Void) {
        singleAnnotateImage(.documentText, image: image, imageContext: imageContext, maxResults: maxResults, result: { response, error in
            result(response?.responses.first?.fullTextAnnotation, error)
        })
    }

    public func faceDetection(image: CVImage, imageContext: CVImageContext? = nil,
                              maxResults: UInt? = nil, result: @escaping ([CVFaceAnnotation]?, Error?) -> Void) {
        singleAnnotateImage(.face, image: image, imageContext: imageContext, maxResults: maxResults, result: { response, error in
            result(response?.responses.first?.faceAnnotations, error)
        })
    }

    public func imageProperties(image: CVImage, imageContext: CVImageContext? = nil,
                                maxResults: UInt? = nil, result: @escaping (CVImageProperties?, Error?) -> Void) {
        singleAnnotateImage(.imageProperties, image: image, imageContext: imageContext, maxResults: maxResults, result: { response, error in
            result(response?.responses.first?.imagePropertiesAnnotation, error)
        })
    }

    public func labelDetection(image: CVImage, imageContext: CVImageContext? = nil,
                               maxResults: UInt? = nil, result: @escaping ([CVEntityAnnotation]?, Error?) -> Void) {
        singleAnnotateImage(.label, image: image, imageContext: imageContext, maxResults: maxResults, result: { response, error in
            result(response?.responses.first?.labelAnnotations, error)
        })
    }

    public func landmarkDetection(image: CVImage, imageContext: CVImageContext? = nil,
                                  maxResults: UInt? = nil, result: @escaping ([CVEntityAnnotation]?, Error?) -> Void) {
        singleAnnotateImage(.landmark, image: image, imageContext: imageContext, maxResults: maxResults, result: { response, error in
            result(response?.responses.first?.landmarkAnnotations, error)
        })
    }

    public func logoDetection(image: CVImage, imageContext: CVImageContext? = nil,
                              maxResults: UInt? = nil, result: @escaping ([CVEntityAnnotation]?, Error?) -> Void) {
        singleAnnotateImage(.logo, image: image, imageContext: imageContext, maxResults: maxResults, result: { response, error in
            result(response?.responses.first?.logoAnnotations, error)
        })
    }

    public func safeSearchDetection(image: CVImage, imageContext: CVImageContext? = nil,
                                    maxResults: UInt? = nil, result: @escaping (CVSafeSearchAnnotation?, Error?) -> Void) {
        singleAnnotateImage(.safeSearch, image: image, imageContext: imageContext, maxResults: maxResults, result: { response, error in
            result(response?.responses.first?.safeSearchAnnotation, error)
        })
    }

    public func textDetection(image: CVImage, imageContext: CVImageContext? = nil,
                                    maxResults: UInt? = nil, result: @escaping ([CVEntityAnnotation]?, Error?) -> Void) {
        singleAnnotateImage(.text, image: image, imageContext: imageContext, maxResults: maxResults, result: { response, error in
            result(response?.responses.first?.textAnnotations, error)
        })
    }

    public func webDetection(image: CVImage, imageContext: CVImageContext? = nil,
                                    maxResults: UInt? = nil, result: @escaping (CVWebDetection?, Error?) -> Void) {
        singleAnnotateImage(.webDetection, image: image, imageContext: imageContext, maxResults: maxResults, result: { response, error in
            result(response?.responses.first?.webDetection, error)
        })
    }
}
