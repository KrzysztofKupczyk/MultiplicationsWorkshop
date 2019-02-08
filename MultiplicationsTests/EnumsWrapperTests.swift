//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import XCTest
@testable import Multiplications

class EnumWrapperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsPlayable() {
        let enumsWrapper = EnumsWrapper()

        XCTAssertTrue(enumsWrapper.isPlayable(tileType: TileType.live))
        XCTAssertTrue(enumsWrapper.isPlayable(tileType: TileType.highlights))
        XCTAssertTrue(enumsWrapper.isPlayable(tileType: TileType.catchup))
        XCTAssertTrue(enumsWrapper.isPlayable(tileType: TileType.coaches))
        XCTAssertTrue(enumsWrapper.isPlayable(tileType: TileType.condensed))
        XCTAssertTrue(enumsWrapper.isPlayable(tileType: TileType.ondemand))
        XCTAssertFalse(enumsWrapper.isPlayable(tileType: TileType.upcoming))
        XCTAssertFalse(enumsWrapper.isPlayable(tileType: TileType.navigation))
    }

}
