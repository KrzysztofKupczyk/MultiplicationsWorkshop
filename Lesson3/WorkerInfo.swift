//
//  Created by Rafal Szastok on 11/03/2019
//  Copyright © 2017 Perform. All rights reserved.
//
	

import UIKit

final class WorkerInfo {
    enum Position {
        case qaDeveloper
        case iosDeveloper
        case tvosDeveloper
        case scrumHamster
        case designer
        case productOwner
    }

    private let oneYear = 3600 * 24 * 365.25

    let firstName: String
    let lastName: String?
    let birthDate: Date?
    let workFloor: UInt8
    let position: Position?


    init (firstName: String,
          lastName: String?,
          birthDate: Date?,
          workFloor: UInt8,
          position: Position) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.workFloor = workFloor
        self.position = position
    }

    var fullName: String? {
        return nil
    }

    var needAccessToRepository: Bool {
        return false
    }

    func age(forDate date: Date) -> CGFloat? {
        guard let birthDate = birthDate else {
            return nil
        }

        let value = date.timeIntervalSince(birthDate) / oneYear
        return CGFloat(value)
    }
}
