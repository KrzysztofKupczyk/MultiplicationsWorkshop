//
//  Created by Rafal Szastok on 17/03/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import XCTest
@testable import Multiplications

final class AirportShortcutDictionaryTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsEmpty() {
        let airportShortcutDictionary = AirportShortcutDictionary()
        XCTAssertTrue(airportShortcutDictionary.isDictionaryEmpty)

        airportShortcutDictionary.add(aiportShort: "ZYAS", fullName: "Anshan Teng")
        XCTAssertFalse(airportShortcutDictionary.isDictionaryEmpty)

        airportShortcutDictionary.remove(aiportShort: "random")
        XCTAssertFalse(airportShortcutDictionary.isDictionaryEmpty)

        airportShortcutDictionary.remove(aiportShort: "ZYAS")
        XCTAssertTrue(airportShortcutDictionary.isDictionaryEmpty)
    }
//        let airportShortcutDictionary = AirportShortcutDictionary()
//
//        airportShortcutDictionary.add(aiportShort: "ZYAS", fullName: "Anshan Teng")
//        airportShortcutDictionary.add(aiportShort: "ZWAT", fullName: "Altay Airport")
//        airportShortcutDictionary.add(aiportShort: "ZWAK", fullName: "Aksu Airport")
//        airportShortcutDictionary.add(aiportShort: "ZUYI", fullName: "Xingyi Wanfenglin")
//        airportShortcutDictionary.add(aiportShort: "ZUHY", fullName: "Hongyuan Airport")
//        airportShortcutDictionary.add(aiportShort: "ZUAS", fullName: "Anshun Huangguoshu")
//        airportShortcutDictionary.add(aiportShort: "ZSAQ", fullName: "Anqing Tianzhushan")
//        airportShortcutDictionary.add(aiportShort: "ZMAH", fullName: "Arvaikheer Airport")
//        airportShortcutDictionary.add(aiportShort: "ZLAK", fullName: "Ankang Wulipu")
//        airportShortcutDictionary.add(aiportShort: "ZHAY", fullName: "Anyang Airport")
//        airportShortcutDictionary.add(aiportShort: "ZGBS", fullName: "Baise Bama")
//        airportShortcutDictionary.add(aiportShort: "YPAD", fullName: "Adelaide Airport")
//        airportShortcutDictionary.add(aiportShort: "YNPE", fullName: "Northern Peninsula")
//        airportShortcutDictionary.add(aiportShort: "YMAY", fullName: "Albury Airport")
//        airportShortcutDictionary.add(aiportShort: "YMAV", fullName: "Avalon Airport")
//        airportShortcutDictionary.add(aiportShort: "YBAS", fullName: "Alice Springs")
//        airportShortcutDictionary.add(aiportShort: "YAYR", fullName: "Ayr Airport")
//        airportShortcutDictionary.add(aiportShort: "YAYE", fullName: "Ayers Rock")
//        airportShortcutDictionary.add(aiportShort: "YAUV", fullName: "Auvergne Airport")
//        airportShortcutDictionary.add(aiportShort: "YAUR", fullName: "Aurukun Airport")
//        airportShortcutDictionary.add(aiportShort: "YARY", fullName: "Arrabury Airport")
//        airportShortcutDictionary.add(aiportShort: "YARM", fullName: "Armidale Airport")
//        airportShortcutDictionary.add(aiportShort: "YARA", fullName: "Ararat Airport")
//        airportShortcutDictionary.add(aiportShort: "YAPH", fullName: "Alpha Airport")
//        airportShortcutDictionary.add(aiportShort: "YAMT", fullName: "Amata Airport")
//        airportShortcutDictionary.add(aiportShort: "YAMK", fullName: "Andamooka Airport")

    func testIsHasDeveloper() {
        // Write tests that check if for QA and developers userInfo returns TRUE.
        // For other cases it should return FALSE.
    }

}
