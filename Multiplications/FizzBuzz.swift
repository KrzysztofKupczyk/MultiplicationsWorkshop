//
//  Created by Rafal Szastok on 09/01/2019
//  Copyright © 2017 Perform. All rights reserved.
//
	

import Foundation

final class FizzBuzz {
    func makeFizzBuzz(for turn: Int) -> String {

        switch turn {
        case let n where n % 3 == 0 && n % 5 == 0:
            return "Fizz Buzz"
        case let n where n % 3 == 0:
            return "Fizz"
        case let n where n % 5 == 0:
            return "Buzz"
        default:
            return "\(turn)"

        }
    }
}
