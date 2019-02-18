//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import XCTest
@testable import Multiplications

final class NextPrimeValueTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testNextFirst10Values() {
        let generator = NextPrime()

        XCTAssertEqual(generator.nextPrime(for: 0), 2)
        XCTAssertEqual(generator.nextPrime(for: 1), 2)
        XCTAssertEqual(generator.nextPrime(for: 2), 3)
        XCTAssertEqual(generator.nextPrime(for: 3), 5)
        XCTAssertEqual(generator.nextPrime(for: 4), 5)
        XCTAssertEqual(generator.nextPrime(for: 5), 7)
        XCTAssertEqual(generator.nextPrime(for: 6), 7)
        XCTAssertEqual(generator.nextPrime(for: 7), 11)
        XCTAssertEqual(generator.nextPrime(for: 8), 11)
        XCTAssertEqual(generator.nextPrime(for: 9), 11)
        XCTAssertEqual(generator.nextPrime(for: 10), 11)
    }

    func testIsPrime() {
        let generator = NextPrime()

        XCTAssertTrue(generator.isPrime(value: 2))
        XCTAssertTrue(generator.isPrime(value: 3))
        XCTAssertTrue(generator.isPrime(value: 5))
        XCTAssertTrue(generator.isPrime(value: 7))
        XCTAssertTrue(generator.isPrime(value: 11))

        XCTAssertFalse(generator.isPrime(value: 1))
        XCTAssertFalse(generator.isPrime(value: 4))
        XCTAssertFalse(generator.isPrime(value: 6))
        XCTAssertFalse(generator.isPrime(value: 8))
        XCTAssertFalse(generator.isPrime(value: 9))
        XCTAssertFalse(generator.isPrime(value: 10))
    }
}
