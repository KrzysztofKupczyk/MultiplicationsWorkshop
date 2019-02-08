//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//
	

import Foundation

final class PrimeGenerator {
    func isPrime(value: Int) -> Bool {
        if value % 2 == 0 {
            return false
        }
        return true
    }

    func nextPrime(for value: Int) -> Int {
        return value + 2
    }
    
}
