//
//  CloudVisionApi.swift
//  CloudVision
//
//  Created by Toni Sučić on 07.12.2017.
//

import Foundation

public typealias ImageRequestResult = (CVAnnotateImageResponse?, Error?) -> Void

class CloudVisionApi {
    private static let version = "v1"
    private static let baseURL = "https://vision.googleapis.com/\(version)/images:annotate"

    private let apiKey: String

    init(apiKey: String) {
        self.apiKey = apiKey
    }

    func annotateImageRequest(_ request: CVAnnotateImageRequest, result: @escaping ImageRequestResult) {
        guard let requestData = try? JSONEncoder().encode(request) else {
            result(nil, CloudVisionError.failedToEncodeRequest)
            return
        }

        var urlComponents = URLComponents(string: CloudVisionApi.baseURL)!
        urlComponents.queryItems = [URLQueryItem(name: "key", value: apiKey)]

        guard let url = urlComponents.url else {
            result(nil, CloudVisionError.invalidCredentials)
            return
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpBody = requestData

        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard let data = data else {
                if let error = error {
                    result(nil, error)
                } else {
                    result(nil, CloudVisionError.unknown)
                }
                return
            }

            guard let response = try? JSONDecoder().decode(CVAnnotateImageResponse.self, from: data) else {
                result(nil, CloudVisionError.failedToDecodeRequest)
                return
            }

            result(response, nil)
        }
    }
}
