//
//  CVFaceType.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public enum CVFaceType: String, Decodable {
    case unkown = "UNKNOWN_LANDMARK"
    case leftEye = "LEFT_EYE"
    case rightEye = "RIGHT_EYE"
    case leftOfLeftEyebrow = "LEFT_OF_LEFT_EYEBROW"
    case rightOfLeftEyebrow = "RIGHT_OF_LEFT_EYEBROW"
    case leftOfRightEyebrow = "LEFT_OF_RIGHT_EYEBROW"
    case rightOfRightEyebrow = "RIGHT_OF_RIGHT_EYEBROW"
    case midpointBetweenEyes = "MIDPOINT_BETWEEN_EYES"
    case noseTip = "NOSE_TIP"
    case upperLip = "UPPER_LIP"
    case lowerLip = "LOWER_LIP"
    case mouthLeft = "MOUTH_LEFT"
    case mouthRight = "MOUTH_RIGHT"
    case mouthCenter = "MOUTH_CENTER"
    case noseBottomRight = "NOSE_BOTTOM_RIGHT"
    case noseBottomLeft = "NOSE_BOTTOM_LEFT"
    case noseBottomCenter = "NOSE_BOTTOM_CENTER"
    case leftEyeTopBoundary = "LEFT_EYE_TOP_BOUNDARY"
    case leftEyeRightCorner = "LEFT_EYE_RIGHT_CORNER"
    case leftEyeBottomBoundary = "LEFT_EYE_BOTTOM_BOUNDARY"
    case leftEyeLeftCorner = "LEFT_EYE_LEFT_CORNER"
    case rightEyeTopBoundary = "RIGHT_EYE_TOP_BOUNDARY"
    case rightEyeRightCorner = "RIGHT_EYE_RIGHT_CORNER"
    case rightEyeBottomBoundary = "RIGHT_EYE_BOTTOM_BOUNDARY"
    case rightEyeLeftCorner = "RIGHT_EYE_LEFT_CORNER"
    case leftEyebrowUpperMidpoint = "LEFT_EYEBROW_UPPER_MIDPOINT"
    case rightEyebrowUpperMidpoint = "RIGHT_EYEBROW_UPPER_MIDPOINT"
    case leftEarTragion = "LEFT_EAR_TRAGION"
    case rightEarTragion = "RIGHT_EAR_TRAGION"
    case leftEyePupil = "LEFT_EYE_PUPIL"
    case rightEyePupil = "RIGHT_EYE_PUPIL"
    case foreheadGlabella = "FOREHEAD_GLABELLA"
    case chinGnathion = "CHIN_GNATHION"
    case chinLeftGonion = "CHIN_LEFT_GONION"
    case chinRightGonion = "CHIN_RIGHT_GONION"
}
