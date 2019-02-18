//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//


import Foundation

enum GREYContentEdge: String {
    case top
    case bottom
    case left
    case right
    case up
    case down
}

final class StringMatcher {
    static func contentEdge(from string: String) -> GREYContentEdge? {

        switch string.lowercased() {
        case "top":
            return GREYContentEdge.top
        case "bottom":
            return GREYContentEdge.bottom
        case "left":
            return GREYContentEdge.left
        case "right":
            return GREYContentEdge.right
        case "up":
            return GREYContentEdge.top
        case "down":
            return GREYContentEdge.bottom
        default:
            return nil
        }

    }

    static func checkIf(string: String, containsContentEdge contentEdge: GREYContentEdge) -> Bool {
        let content = contentEdge.rawValue

        if string.lowercased().contains(content) {
            return true
        }
        return false
        
    }

}
