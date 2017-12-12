//
//  CVSafeSearchAnnotation.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public struct CVSafeSearchAnnotation: Decodable {
    public let adult: CVLikelihood
    public let spoof: CVLikelihood
    public let medical: CVLikelihood
    public let violence: CVLikelihood
}
