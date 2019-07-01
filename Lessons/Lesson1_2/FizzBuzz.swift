//
//  Created by Rafal Szastok on 09/01/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import Foundation

final class FizzBuzz {
    func makeFizzBuzz(for turn: Int) -> String {
        if turn % 15 == 0 {
            return "Fizz Buzz"
        }
        if turn % 3 == 0 {
            return "Fizz"
        }

        if turn % 5 == 0 {
            return "Buzz"
        }

        return "\(turn)"
    }
}
