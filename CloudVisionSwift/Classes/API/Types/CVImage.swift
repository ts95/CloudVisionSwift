//
//  CVImage.swift
//  CloudVision
//
//  Created by Toni Sučić on 07.12.2017.
//

import Foundation

public struct CVImage: Encodable {
    public let content: Data?
    public let source: CVImageSource?

    public init(content: Data) {
        self.content = content
        self.source = nil
    }

    public init?(image: UIImage, ofType type: ImageType) {
        self.content = try? image.toData(withType: type)
        self.source = nil
    }

    public init(url: String) {
        self.content = nil
        self.source = CVImageSource(gcsImageUri: nil, imageUri: url)
    }
}

public enum ImageType {
    case jpeg
    case png
}

private extension UIImage {
    func toData(withType imageType: ImageType) throws -> Data {
        let data: Data?

        if case let imageType = imageType, imageType == .jpeg {
            data = UIImageJPEGRepresentation(self, 0.85)
        } else {
            data = UIImagePNGRepresentation(self)
        }

        guard let imageData = data else { throw CloudVisionError.failedToDecodeImage }

        return imageData
    }
}
