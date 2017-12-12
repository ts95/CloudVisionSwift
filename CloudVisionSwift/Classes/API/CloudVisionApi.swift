//
//  CloudVisionApi.swift
//  CloudVision
//
//  Created by Toni Sučić on 07.12.2017.
//

import Foundation

public typealias ImageRequestResult = (ImagesAnnotateResponse?, Error?) -> Void

public struct ImagesAnnotateRequest: Encodable {
    let requests: [CVAnnotateImageRequest]
}

public struct ImagesAnnotateResponse: Decodable {
    let responses: [CVAnnotateImageResponse]
}

class CloudVisionApi {
    private static let endpointURL = "https://vision.googleapis.com/v1/images:annotate"

    private let apiKey: String

    init(apiKey: String) {
        self.apiKey = apiKey
    }

    func annotateImageRequest(_ request: CVAnnotateImageRequest, result: @escaping ImageRequestResult) {
        annotateImageRequests([request], result: result)
    }

    func annotateImageRequests(_ requests: [CVAnnotateImageRequest], result: @escaping ImageRequestResult) {
        guard let requestData = try? JSONEncoder().encode(ImagesAnnotateRequest(requests: requests)) else {
            result(nil, CloudVisionError.failedToEncodeRequest)
            return
        }

        var urlComponents = URLComponents(string: CloudVisionApi.endpointURL)!
        urlComponents.queryItems = [URLQueryItem(name: "key", value: apiKey)]

        guard let url = urlComponents.url else {
            result(nil, CloudVisionError.invalidCredentials)
            return
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.timeoutInterval = 10
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpBody = requestData

        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error { result(nil, error) }
            guard let data = data, let response = response as? HTTPURLResponse else {
                result(nil, CloudVisionError.unknown)
                return
            }

            guard case 200...299 = response.statusCode else {
                result(nil, CloudVisionError.httpStatusCode(response.statusCode))
                return
            }

            print(String(data: data, encoding: .utf8)!)

            guard let annotateImageResponse = try? JSONDecoder().decode(ImagesAnnotateResponse.self, from: data) else {
                result(nil, CloudVisionError.failedToDecodeRequest)
                return
            }

            result(annotateImageResponse, nil)
        }
        task.resume()
    }
}
