//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//


import Foundation

final class Containers {
    var savedValue: String?
    func save(value: String) {
        savedValue = value
    }

    func checkIfValueIsSaved(value: String) -> Bool {
        return savedValue == value
    }
}
