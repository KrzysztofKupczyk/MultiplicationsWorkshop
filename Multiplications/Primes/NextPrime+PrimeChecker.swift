//
//  Created by Rafal Szastok on 18/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//
	

import Foundation

extension NextPrime {

    func isPrime(for value: Int) -> Bool {
        let doubleValue = Double(value)
        let maximumValue = Int(sqrt(doubleValue))
        for potentialDivider in 2...maximumValue {
            if value % potentialDivider == 0 {
                return false
            }
        }
        return true
    }
}
