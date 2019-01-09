//
//  Created by Rafal Szastok on 09/01/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import XCTest
@testable import Multiplications

class FizzBuzzTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFizzBuzzFirst15() {
        let fizzBuzz = FizzBuzz()
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 1), "1")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 2), "2")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 3), "Fizz")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 4), "4")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 5), "Buzz")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 6), "Fizz")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 7), "7")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 8), "8")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 9), "Fizz")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 10), "Buzz")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 11), "11")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 12), "Fizz")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 13), "13")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 14), "14")
        XCTAssertEqual(fizzBuzz.makeFizzBuzz(for: 15), "Fizz Buzz")
    }

    func testFirst100Fizz() {
        let fizzBuzz = FizzBuzz()
        for index in 1...100 {
            let result = fizzBuzz.makeFizzBuzz(for: index)

            if index % 3 == 0 {
                XCTAssert(result.contains("Fizz"))
            }

            if index % 5 == 0 {
                XCTAssert(result.contains("Buzz"))
            }
        }
    }

}
