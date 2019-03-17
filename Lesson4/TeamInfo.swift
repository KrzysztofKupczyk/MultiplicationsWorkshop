//
//  Created by Rafal Szastok on 11/03/2019
//  Copyright © 2017 Perform. All rights reserved.
//
	

import UIKit

final class TeamInfo {

    private var members: [WorkerInfo] = []

    // How perfect scrum team should look like
    // Says how many people in specific position should it hold.
    private var perfectTeam = Dictionary<WorkerInfo.Position, Int>()


    private func helperMethod() {

        let minimumNumber = 2
        for position in perfectTeam.keys {
            let requiredPositionNumber = perfectTeam[position] ?? 0
            if requiredPositionNumber < minimumNumber {
                // Do something here.
            }
        }


        members.map {
            $0.birthDate
        }
    }

    init () {
        perfectTeam = [
            .designer: 1,
            .iosDeveloper: 3,
            .qaDeveloper: 2,
            .scrumHamster: 1,
            .productOwner: 1
        ]
    }
    var allWorkerNames: [String] {
        return []
    }

    func allRolesInTeam() -> Set<WorkerInfo.Position> {
        return Set<WorkerInfo.Position>()
    }

    func averageWorkerAge() -> CGFloat {
        return -1
    }

    // Generates missing Positions in the team according to perfectTeam composition.
    func calculateMissingPositionsInTeam() -> Set<WorkerInfo.Position> {
        return Set<WorkerInfo.Position>()
    }
}
