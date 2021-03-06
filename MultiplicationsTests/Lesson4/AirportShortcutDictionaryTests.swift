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

    func testIsEmptyAndRemove() {
        let airportShortcutDictionary = AirportShortcutDictionary()
        XCTAssertTrue(airportShortcutDictionary.isDictionaryEmpty)

        airportShortcutDictionary.add(aiportShort: "ZYAS", fullName: "Anshan Teng")
        XCTAssertFalse(airportShortcutDictionary.isDictionaryEmpty)

        let result = airportShortcutDictionary.remove(aiportShort: "random")
        XCTAssertFalse(airportShortcutDictionary.isDictionaryEmpty)
        XCTAssertFalse(result)

        let result2 = airportShortcutDictionary.remove(aiportShort: "ZYAS")
        XCTAssertTrue(airportShortcutDictionary.isDictionaryEmpty)
        XCTAssertTrue(result2)
    }

    func testContainsAndSave() {
        let airportShortcuts = AirportShortcutDictionary()
        var containsValue = airportShortcuts.contains(airportName: "Anshan Teng")
        XCTAssertFalse(containsValue)

        airportShortcuts.add(aiportShort: "ZYAS", fullName: "Anshan Teng")
        containsValue = airportShortcuts.contains(airportName: "Anshan Teng")
        XCTAssertTrue(containsValue)
    }

    func testContaintsAndSave2() {
        let airportShortcuts = AirportShortcutDictionary()
        var addingResult = airportShortcuts.safeAdd(aiportShort: "ZWAK", fullName: "Aksu Airport")
        XCTAssertTrue(addingResult)

        var containsValue = airportShortcuts.contains(airportName: "Anshan Teng")
        XCTAssertFalse(containsValue)

        containsValue = airportShortcuts.contains(airportName: "Aksu Airport")
        XCTAssertTrue(containsValue)


        addingResult = airportShortcuts.safeAdd(aiportShort: "ZWAK", fullName: "Aksu Airport")
        XCTAssertFalse(addingResult)
        containsValue = airportShortcuts.contains(airportName: "Anshan Teng")
        XCTAssertFalse(containsValue)
    }

    func testContainsAndSave3() {
        let airportShortcuts = AirportShortcutDictionary()
        var containsValue = airportShortcuts.contains(airportShort: "ZYAS")
        XCTAssertFalse(containsValue)

        airportShortcuts.add(aiportShort: "ZYAS", fullName: "Anshan Teng")
        containsValue = airportShortcuts.contains(airportShort: "ZYAS")
        XCTAssertTrue(containsValue)
    }

    func testRemoveAndContains() {
        let airportShortcuts = AirportShortcutDictionary()
        airportShortcuts.add(aiportShort: "ZUHY", fullName: "Hongyuan Airport")
        var containsResult = airportShortcuts.contains(airportName: "Hongyuan Airport")
        XCTAssertTrue(containsResult)

        var removeResult = airportShortcuts.remove(airportName: "ldfjglkdj")
        containsResult = airportShortcuts.contains(airportName: "Hongyuan Airport")
        XCTAssertTrue(containsResult)
        XCTAssertFalse(removeResult)

        removeResult = airportShortcuts.remove(airportName: "Hongyuan Airport")
        containsResult = airportShortcuts.contains(airportName: "Hongyuan Airport")
        XCTAssertFalse(containsResult)
        XCTAssertTrue(removeResult)

    }

    func testRemoveAndContains2() {
        let airportShortcuts = AirportShortcutDictionary()
        airportShortcuts.add(aiportShort: "ZUHY", fullName: "Hongyuan Airport")
        var containsResult = airportShortcuts.contains(airportName: "Hongyuan Airport")
        XCTAssertTrue(containsResult)

        var removeResult = airportShortcuts.remove(aiportShort: "ZZ")
        containsResult = airportShortcuts.contains(airportName: "Hongyuan Airport")
        XCTAssertTrue(containsResult)
        XCTAssertFalse(removeResult)

        removeResult = airportShortcuts.remove(aiportShort: "ZUHY")
        containsResult = airportShortcuts.contains(airportName: "Hongyuan Airport")
        XCTAssertFalse(containsResult)
        XCTAssertTrue(removeResult)

    }

    func testAAA() {
        let airportShortcuts = AirportShortcutDictionary()
        airportShortcuts.add(aiportShort: "ZYAS", fullName: "Anshan Teng")
        airportShortcuts.add(aiportShort: "ZWAT", fullName: "Altay Airport")
        airportShortcuts.add(aiportShort: "ZWAK", fullName: "Aksu Airport")
        airportShortcuts.add(aiportShort: "ZUYI", fullName: "Xingyi Wanfenglin")
        airportShortcuts.add(aiportShort: "ZUHY", fullName: "Hongyuan Airport")
        airportShortcuts.add(aiportShort: "ZUAS", fullName: "Anshun Huangguoshu")
        airportShortcuts.add(aiportShort: "ZSAQ", fullName: "Anqing Tianzhushan")
        airportShortcuts.add(aiportShort: "ZMAH", fullName: "Arvaikheer Airport")
        airportShortcuts.add(aiportShort: "ZLAK", fullName: "Ankang Wulipu")
        airportShortcuts.add(aiportShort: "ZHAY", fullName: "Anyang Airport")
        airportShortcuts.add(aiportShort: "ZGBS", fullName: "Baise Bama")
        airportShortcuts.add(aiportShort: "YPAD", fullName: "Adelaide Airport")
        airportShortcuts.add(aiportShort: "YNPE", fullName: "Northern Peninsula")
        airportShortcuts.add(aiportShort: "YMAY", fullName: "Albury Airport")
        airportShortcuts.add(aiportShort: "YMAV", fullName: "Avalon Airport")
        airportShortcuts.add(aiportShort: "YBAS", fullName: "Alice Springs")
        airportShortcuts.add(aiportShort: "YAYR", fullName: "Ayr Airport")
        airportShortcuts.add(aiportShort: "YAYE", fullName: "Ayers Rock")
        airportShortcuts.add(aiportShort: "YAUV", fullName: "Auvergne Airport")
        airportShortcuts.add(aiportShort: "YAUR", fullName: "Aurukun Airport")
        airportShortcuts.add(aiportShort: "YARY", fullName: "Arrabury Airport")
        airportShortcuts.add(aiportShort: "YARM", fullName: "Armidale Airport")
        airportShortcuts.add(aiportShort: "YARA", fullName: "Ararat Airport")
        airportShortcuts.add(aiportShort: "YAPH", fullName: "Alpha Airport")
        airportShortcuts.add(aiportShort: "YAMT", fullName: "Amata Airport")
        airportShortcuts.add(aiportShort: "WAMK", fullName: "Andamooka Airport")

        var names = airportShortcuts.airportNamesWith(firstCharacter: "A")
        XCTAssertEqual(names.count, 22)
        XCTAssert(names.contains("Anshan Teng"))
        XCTAssert(names.contains("Andamooka Airport"))

        names = airportShortcuts.airportNamesWith(firstCharacter: "B")
        XCTAssertEqual(names.count, 1)
        XCTAssert(names.contains("Baise Bama"))

        names = airportShortcuts.airportNamesWith(firstCharacter: "Z")
        XCTAssertEqual(names.count, 0)

        names = airportShortcuts.airportShortcutsWith(firstCharacter: "Y")
        XCTAssertEqual(names.count, 14)
        XCTAssert(names.contains("YAMT"))
        XCTAssert(names.contains("YPAD"))

        names = airportShortcuts.airportShortcutsWith(firstCharacter: "W")
        XCTAssertEqual(names.count, 1)
        XCTAssert(names.contains("WAMK"))

        names = airportShortcuts.airportShortcutsWith(firstCharacter: "Q")
        XCTAssertEqual(names.count, 0)


    }
    func testIsHasDeveloper() {
        // Write tests that check if for QA and developers userInfo returns TRUE.
        // For other cases it should return FALSE.
    }

}
