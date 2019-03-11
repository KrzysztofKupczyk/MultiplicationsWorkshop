//
//  Created by Rafal Szastok on 11/03/2019
//  Copyright © 2017 Perform. All rights reserved.
//
	

import Foundation

class Containers {
    var valueSet = Set<String>()
    func save(value: String) {
        valueSet.insert(value)
    }
    func checkIfValueIsSaved(value: String) -> Bool {
        return valueSet.contains(value)
    }
}
