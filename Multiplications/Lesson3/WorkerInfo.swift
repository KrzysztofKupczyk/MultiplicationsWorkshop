//
//  Created by Rafal Szastok on 11/03/2019
//  Copyright © 2017 Perform. All rights reserved.
//
	

import Foundation

final class WorkerInfo {
    
    enum Position {
        case qaDeveloper
        case iosDeveloper
        case scrumHamster
        case designer
        case productOwner
    }

    let firstName: String?
    let lastName: String?
    let birthDate: Date?
    let workFloor: UInt8
    let position: Position?

    init () {
        firstName = nil
        lastName = nil
        birthDate = nil
        workFloor = 6
        position = nil
    }

    var fullName: String? {
        return nil
    }

    var needAccessToRepository: Bool {
        return false
    }
}
