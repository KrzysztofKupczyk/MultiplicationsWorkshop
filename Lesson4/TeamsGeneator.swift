//
//  Created by Rafal Szastok on 22/03/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import Foundation

final class TeamsGenerator {
    static func makeRandomWorkers(count: Int) -> [WorkerInfo] {
        guard count > 0 else {
            return []
        }

        return Array<Int>(0 ..< count)
            .map { _ in

                let oneYear = 365 * 24 * 3600
                let years22 = UInt32(oneYear * 22)
                let random22years = Int(arc4random_uniform(years22))
                let timeInterval = TimeInterval(oneYear * 18 + random22years)
                let birthDate = Date().addingTimeInterval(-timeInterval)

                return WorkerInfo(
                    firstName: randomFirstName(),
                    lastName: "DAZNowicz",
                    birthDate: birthDate,
                    workFloor: UInt8(Int(arc4random_uniform(10))),
                    position: WorkerInfo.Position.scrumHamster
                )
            }
    }

    private static func randomFirstName() -> String {
        let firstNames = [
            "Anna",
            "Grzegorz",
            "Tomek",
            "Bartek",
            "Michał",
            "Rafał",
            "Jakub",
            "Marcin",
            "Dawid",
            "Wojtek",
            "Jarowsław",
            "Andrzej",
            "Aleksander",
            "Arek",
            "Maciek",
            "Dawid",
            "Klaudia",
            "Elżbieta",
            "Małgorzata",
            "Natalia",
            "Łukasz",
            "Mujahid",
            "Volodymyr",
        ]

        let index = Int(arc4random_uniform(UInt32(firstNames.count - 1)))
        return firstNames[index]
    }
}
