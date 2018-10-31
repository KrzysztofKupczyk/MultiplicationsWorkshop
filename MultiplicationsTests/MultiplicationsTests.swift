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

    func testTabliceMnozeniaWartosci() throws {
        let tablicaTablic = GeneratorLiczb.generujTabliceMnozenia(liczbaKolumn: 2, liczbaWierszy: 2)
        XCTAssertEqual(tablicaTablic[0][0], 1)
        XCTAssertEqual(tablicaTablic[0][1], 2)
        XCTAssertEqual(tablicaTablic[1][0], 2)
        XCTAssertEqual(tablicaTablic[1][1], 4)
    }

    func testTabliceMnozeniaWartosci2() throws {
        let tablicaTablic = GeneratorLiczb.generujTabliceMnozenia(liczbaKolumn: 7, liczbaWierszy: 5)
        XCTAssertEqual(tablicaTablic[0][0], 1)
        XCTAssertEqual(tablicaTablic[0][1], 2)
        XCTAssertEqual(tablicaTablic[1][0], 2)
        XCTAssertEqual(tablicaTablic[1][1], 4)
        XCTAssertEqual(tablicaTablic[2][1], 6)
        XCTAssertEqual(tablicaTablic[2][2], 9)
        XCTAssertEqual(tablicaTablic[1][2], 6)
        XCTAssertEqual(tablicaTablic[6][2], 21)
        XCTAssertEqual(tablicaTablic[6][4], 35)
    }

    func testWymiaryTablicy() throws {

        let tablicaTablic = GeneratorLiczb.generujTabliceMnozenia(liczbaKolumn: 5, liczbaWierszy: 5)
        XCTAssertEqual(tablicaTablic.count, 5)

        for value in stride(from: 0, to: 4, by: 1) {
            let tablica = tablicaTablic[value]

            XCTAssertEqual(tablica.count, 5)
        }

    }

}
