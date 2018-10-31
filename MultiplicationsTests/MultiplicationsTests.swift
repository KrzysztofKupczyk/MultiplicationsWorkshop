//
//  MultiplicationsTests.swift
//  MultiplicationsTests
//
//  Created by Krzysztof on 12/10/2018.
//  Copyright © 2018 Krzysztof. All rights reserved.
//

import XCTest
@testable import Multiplications

class MultiplicationsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let tablicaTablic = GenerujLiczby.generuj(osX: 2, osY: 2)
        XCTAssertEqual(tablicaTablic[0][0], 1)
        XCTAssertEqual(tablicaTablic[0][1], 2)
        XCTAssertEqual(tablicaTablic[1][0], 2)
        XCTAssertEqual(tablicaTablic[1][1], 4)

    }

    func testPerformanceExample() throws {

        let tablicaTablic = GenerujLiczby.generuj(osX: 5, osY: 5)
        XCTAssertEqual(tablicaTablic.count, 5)

        for value in stride(from: 0, to: 4, by: 1) {
            let tablica = tablicaTablic[value]

            XCTAssertEqual(tablica.count, 5)
        }

    }

}
