//
//  SRSSuperMemo2Tests.swift
//  SRSSuperMemo2Tests
//
//  Created by Maddin on 02/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import XCTest
@testable import SRSSuperMemo2

class SRSSuperMemo2Tests: XCTestCase {

    var sm2Engine = SM2Engine()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()

    }

    func testEasinessFactor() {
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.67), grade: 3).easinessFactor < 1.67) 
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.67), grade: 4).easinessFactor == 1.67) 
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.67), grade: 5).easinessFactor > 1.67) 

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.89), grade: 3).easinessFactor < 1.89)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.89), grade: 4).easinessFactor == 1.89)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.89), grade: 5).easinessFactor > 1.89)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.2), grade: 3).easinessFactor < 2.2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.2), grade: 4).easinessFactor == 2.2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.2), grade: 5).easinessFactor > 2.2)
    }

    func testMinimumEasinessFactor() {
        let minimumEasinessFactor = 1.3
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: 0).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: 1).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: 2).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: 3).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: 4).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: 5).easinessFactor > minimumEasinessFactor)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0), grade: 2).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 0.0), grade: 0).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 0.0), grade: 1).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 0.0), grade: 2).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 0.0), grade: 3).easinessFactor == minimumEasinessFactor)
    }

    func testMaximumEasinessFactor() {
        let maximumEasinessFactor = 2.5
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: 0).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: 1).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: 2).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: 3).easinessFactor < maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: 4).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: 5).easinessFactor == maximumEasinessFactor)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 3.0), grade: 5).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1000.0), grade: 5).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.6), grade: 5).easinessFactor == maximumEasinessFactor)
    }

}

private extension SRSSuperMemo2Tests {
    func gradedItem(item: SRSItem, grade: SM2Engine.Grade) -> SRSItem {
        return sm2Engine.gradeSRSItem(item: item, grade: grade)
    }
}
