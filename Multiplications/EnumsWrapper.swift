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
        // Use switch here
        return false
    }

}
