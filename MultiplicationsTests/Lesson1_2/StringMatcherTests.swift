//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//

@testable import Multiplications
import XCTest

class StringMatcherTests: XCTestCase {
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMatcherSimple() {
        XCTAssertEqual(StringMatcher.contentEdge(from: "top"), GREYContentEdge.top)
        XCTAssertEqual(StringMatcher.contentEdge(from: "bottom"), GREYContentEdge.bottom)
        XCTAssertEqual(StringMatcher.contentEdge(from: "left"), GREYContentEdge.left)
        XCTAssertEqual(StringMatcher.contentEdge(from: "right"), GREYContentEdge.right)
        XCTAssertEqual(StringMatcher.contentEdge(from: "up"), GREYContentEdge.top)
        XCTAssertEqual(StringMatcher.contentEdge(from: "down"), GREYContentEdge.bottom)
        XCTAssertEqual(StringMatcher.contentEdge(from: "dupa"), nil)
    }

    func testMatcherDifferentCase() {
        XCTAssertEqual(StringMatcher.contentEdge(from: "Top"), GREYContentEdge.top)
        XCTAssertEqual(StringMatcher.contentEdge(from: "bOttom"), GREYContentEdge.bottom)
        XCTAssertEqual(StringMatcher.contentEdge(from: "leFt"), GREYContentEdge.left)
        XCTAssertEqual(StringMatcher.contentEdge(from: "right"), GREYContentEdge.right)
        XCTAssertEqual(StringMatcher.contentEdge(from: "uP"), GREYContentEdge.top)
        XCTAssertEqual(StringMatcher.contentEdge(from: "DOWN"), GREYContentEdge.bottom)
        XCTAssertEqual(StringMatcher.contentEdge(from: "dup"), nil)
    }

    func testContainingString() {
        XCTAssertTrue(StringMatcher.checkIf(
            string: "to jest bottom",
            containsContentEdge: GREYContentEdge.bottom
        ))
        XCTAssertFalse(StringMatcher.checkIf(
            string: "to jest ddd",
            containsContentEdge: GREYContentEdge.bottom
        ))

        XCTAssertTrue(StringMatcher.checkIf(
            string: "to jest top",
            containsContentEdge: GREYContentEdge.top
        ))
        XCTAssertFalse(StringMatcher.checkIf(
            string: "to jest ddd",
            containsContentEdge: GREYContentEdge.top
        ))

        XCTAssertTrue(StringMatcher.checkIf(
            string: "to jest left",
            containsContentEdge: GREYContentEdge.left
        ))
        XCTAssertFalse(StringMatcher.checkIf(
            string: "to jest ddd",
            containsContentEdge: GREYContentEdge.left
        ))
    }
}
