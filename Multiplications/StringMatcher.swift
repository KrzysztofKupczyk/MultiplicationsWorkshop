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
        return GREYContentEdge.top
    }

    static func checkIf(string: String, containsContentEdge contentEdge: GREYContentEdge) -> Bool {
        return false
        
    }

}
