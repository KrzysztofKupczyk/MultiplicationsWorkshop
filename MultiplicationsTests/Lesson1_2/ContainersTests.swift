//
//  Created by Rafal Szastok on 08/02/2019
//  Copyright © 2017 Perform. All rights reserved.
//

import XCTest
@testable import Multiplications

class ContainersTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testContainingValue() {
        let containers = Containers()
        XCTAssertFalse(containers.checkIfValueIsSaved(value: "value1"))
        containers.save(value: "value1")
        XCTAssertTrue(containers.checkIfValueIsSaved(value: "value1"))
    }

}
