//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import Foundation

public enum TileType: String, CaseIterable {
    case catchup
    case upcoming
    case highlights
    case live
    case navigation
    case ondemand
    case condensed
    case coaches
}

final class EnumsWrapper {
    func isPlayable(tileType: TileType) -> Bool {
        switch tileType {
        case .catchup, .highlights:
            return true
        case .upcoming:
            return false
        case .live:
            return true
        case .navigation:
            return false
        case .ondemand:
            return true
        case .condensed:
            return true
        case .coaches:
            return true
        }
    }
}
