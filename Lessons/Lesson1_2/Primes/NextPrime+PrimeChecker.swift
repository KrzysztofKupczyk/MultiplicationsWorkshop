//
//  Created by Rafal Szastok on 18/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import Foundation

final class PrimeChecker {
    static func calculateIfIsPrime(for value: Int) -> Bool {
        let doubleValue = Double(value)
        let maximumValue = Int(sqrt(doubleValue))
        if value < 2 {
            return false
        }
        if value == 2 {
            return true
        }
        if value == 3 {
            return true
        }
        for potentialDivider in 2 ... maximumValue {
            if value % potentialDivider == 0 {
                return false
            }
        }
        return true
    }
}

extension NextPrime {
    func calculateIfIsPrime(for value: Int) -> Bool {
        return PrimeChecker.calculateIfIsPrime(for: value)
    }
}
