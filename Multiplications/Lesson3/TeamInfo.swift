//
//  Created by Rafal Szastok on 11/03/2019
//  Copyright © 2017 Perform. All rights reserved.
//
	

import Foundation

final class TeamInfo {

    var members: [WorkerInfo] = []

    func allNames() -> [String] {
        return []
    }

    func calculateMissingPositionsInTeam() -> Set<WorkerInfo.Position> {
        return Set<WorkerInfo.Position>()
    }
}
