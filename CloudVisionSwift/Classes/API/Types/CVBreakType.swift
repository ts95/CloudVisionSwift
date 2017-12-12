//
//  CVBreakType.swift
//  CloudVision
//
//  Created by Toni Sučić on 08.12.2017.
//

import Foundation

public enum CVBreakType: String, Decodable {
    case unknown = "UNKNOWN"
    case space = "SPACE"
    case sureSpace = "SURE_SPACE"
    case eolSureSpace = "EOL_SURE_SPACE"
    case hyphen = "HYPHEN"
    case lineBreak = "LINE_BREAK"
}
