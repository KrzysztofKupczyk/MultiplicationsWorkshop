//
//  Created by Rafal Szastok on 11/03/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import Foundation

final class WorkerInfo {
    enum Position {
        case qaDeveloper
        case iosDeveloper
        case tvosDeveloper
        case scrumHamster
        case designer
        case productOwner
    }

    let firstName: String
    let lastName: String?
    let birthDate: Date?
    let workFloor: UInt8
    let position: Position

    init(firstName: String, lastName: String?, birthDate: Date, workFloor: UInt8, position: Position) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.workFloor = workFloor
        self.position = position
    }

    var fullName: String? {
        guard let lastName = lastName else {
            return firstName
        }
        return firstName + " " + lastName
    }

//        if let lastName = lastName {
//            return firstName + " " + lastName
//        }
//        return firstName
//    }

    var needAccessToRepository: Bool {
        return false
    }
}
