//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import Foundation

final class NextPrime {

    public init() {}

    func isPrime(value: Int) -> Bool {
        return calculateIfIsPrime(for: value)
    }

    func nextPrime(for value: Int) -> Int {
        var potentialValue = value
        while true {
            potentialValue += 1
            if calculateIfIsPrime(for: potentialValue) {
                return potentialValue
            }
        }
    }
}
