//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//


import Foundation

final class Containers {
    var data:[String] = []

    func save(value: String) {
        data.append(value)
    }

    func checkIfValueIsSaved(value: String) -> Bool {

       return data.contains(value)
}
}
