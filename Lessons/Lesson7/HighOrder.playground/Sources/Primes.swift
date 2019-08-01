//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import Foundation

public class NextPrime {

    public init() {}

    public func isPrime(value: Int) -> Bool {
        return calculateIfIsPrime(for: value)
    }

    public func nextPrime(for value: Int) -> Int {
        var potentialValue = value
        while true {
            potentialValue += 1
            if calculateIfIsPrime(for: potentialValue) {
                return potentialValue
            }
        }
    }
}

public class PrimeChecker {
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
