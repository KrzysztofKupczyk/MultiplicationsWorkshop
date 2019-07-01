//
//  Created by Rafal Szastok on 17/03/2019
//  Copyright © 2017 Perform. All rights reserved.
//

@testable import Multiplications
import XCTest

final class AirportShortcutDictionaryTests: XCTestCase {
    func testIsEmptyAndRemove() {
        let airportShortcutDictionary = AirportShortcutDictionary()
        XCTAssertTrue(airportShortcutDictionary.isDictionaryEmpty)

        airportShortcutDictionary.add(airportShort: "ZYAS", fullName: "Anshan Teng")
        XCTAssertFalse(airportShortcutDictionary.isDictionaryEmpty)

        let result = airportShortcutDictionary.remove(airportShort: "random")
        XCTAssertFalse(airportShortcutDictionary.isDictionaryEmpty)
        XCTAssertFalse(result)

        let result2 = airportShortcutDictionary.remove(airportShort: "ZYAS")
        XCTAssertTrue(airportShortcutDictionary.isDictionaryEmpty)
        XCTAssertTrue(result2)
    }

    func testContainsAndSave() {
        let airportShortcuts = AirportShortcutDictionary()
        var containsValue = airportShortcuts.contains(airportName: "Anshan Teng")
        XCTAssertFalse(containsValue)

        airportShortcuts.add(airportShort: "ZYAS", fullName: "Anshan Teng")
        containsValue = airportShortcuts.contains(airportName: "Anshan Teng")
        XCTAssertTrue(containsValue)
    }

    func testContaintsAndSave2() {
        let airportShortcuts = AirportShortcutDictionary()
        var addingResult = airportShortcuts.safeAdd(airportShort: "ZWAK", fullName: "Aksu Airport")
        XCTAssertTrue(addingResult)

        var containsValue = airportShortcuts.contains(airportName: "Anshan Teng")
        XCTAssertFalse(containsValue)

        containsValue = airportShortcuts.contains(airportName: "Aksu Airport")
        XCTAssertTrue(containsValue)

        addingResult = airportShortcuts.safeAdd(airportShort: "ZWAK", fullName: "Aksu Airport")
        XCTAssertFalse(addingResult)
        containsValue = airportShortcuts.contains(airportName: "Anshan Teng")
        XCTAssertFalse(containsValue)
    }

    func testContainsAndSave3() {
        let airportShortcuts = AirportShortcutDictionary()
        var containsValue = airportShortcuts.contains(airportShort: "ZYAS")
        XCTAssertFalse(containsValue)

        airportShortcuts.add(airportShort: "ZYAS", fullName: "Anshan Teng")
        containsValue = airportShortcuts.contains(airportShort: "ZYAS")
        XCTAssertTrue(containsValue)
    }

    func testRemoveAndContains() {
        let airportShortcuts = AirportShortcutDictionary()
        airportShortcuts.add(airportShort: "ZUHY", fullName: "Hongyuan Airport")
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
        airportShortcuts.add(airportShort: "ZUHY", fullName: "Hongyuan Airport")
        var containsResult = airportShortcuts.contains(airportName: "Hongyuan Airport")
        XCTAssertTrue(containsResult)

        var removeResult = airportShortcuts.remove(airportShort: "ZZ")
        containsResult = airportShortcuts.contains(airportName: "Hongyuan Airport")
        XCTAssertTrue(containsResult)
        XCTAssertFalse(removeResult)

        removeResult = airportShortcuts.remove(airportShort: "ZUHY")
        containsResult = airportShortcuts.contains(airportName: "Hongyuan Airport")
        XCTAssertFalse(containsResult)
        XCTAssertTrue(removeResult)
    }

    func testAAA() {
        let airportShortcuts = AirportShortcutDictionary()
        airportShortcuts.add(airportShort: "ZYAS", fullName: "Anshan Teng")
        airportShortcuts.add(airportShort: "ZWAT", fullName: "Altay Airport")
        airportShortcuts.add(airportShort: "ZWAK", fullName: "Aksu Airport")
        airportShortcuts.add(airportShort: "ZUYI", fullName: "Xingyi Wanfenglin")
        airportShortcuts.add(airportShort: "ZUHY", fullName: "Hongyuan Airport")
        airportShortcuts.add(airportShort: "ZUAS", fullName: "Anshun Huangguoshu")
        airportShortcuts.add(airportShort: "ZSAQ", fullName: "Anqing Tianzhushan")
        airportShortcuts.add(airportShort: "ZMAH", fullName: "Arvaikheer Airport")
        airportShortcuts.add(airportShort: "ZLAK", fullName: "Ankang Wulipu")
        airportShortcuts.add(airportShort: "ZHAY", fullName: "Anyang Airport")
        airportShortcuts.add(airportShort: "ZGBS", fullName: "Baise Bama")
        airportShortcuts.add(airportShort: "YPAD", fullName: "Adelaide Airport")
        airportShortcuts.add(airportShort: "YNPE", fullName: "Northern Peninsula")
        airportShortcuts.add(airportShort: "YMAY", fullName: "Albury Airport")
        airportShortcuts.add(airportShort: "YMAV", fullName: "Avalon Airport")
        airportShortcuts.add(airportShort: "YBAS", fullName: "Alice Springs")
        airportShortcuts.add(airportShort: "YAYR", fullName: "Ayr Airport")
        airportShortcuts.add(airportShort: "YAYE", fullName: "Ayers Rock")
        airportShortcuts.add(airportShort: "YAUV", fullName: "Auvergne Airport")
        airportShortcuts.add(airportShort: "YAUR", fullName: "Aurukun Airport")
        airportShortcuts.add(airportShort: "YARY", fullName: "Arrabury Airport")
        airportShortcuts.add(airportShort: "YARM", fullName: "Armidale Airport")
        airportShortcuts.add(airportShort: "YARA", fullName: "Ararat Airport")
        airportShortcuts.add(airportShort: "YAPH", fullName: "Alpha Airport")
        airportShortcuts.add(airportShort: "YAMT", fullName: "Amata Airport")
        airportShortcuts.add(airportShort: "WAMK", fullName: "Andamooka Airport")

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
