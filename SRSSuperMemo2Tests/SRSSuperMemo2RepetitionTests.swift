//
//  SRSSuperMemo2RepetitionTests.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 02/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import XCTest
@testable import SRSSuperMemo2

class SRSSuperMemo2RepetitionTests: SRSSuperMemo2Tests {
    
    func testIncreasingRepetition() {
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: 3).repetition == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: 3).repetition == 2)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: 3).repetition == 3)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: 3).repetition == 4)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: 3).repetition == 21)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: 3).repetition == 178)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: 3).repetition == 123457)

        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: 4).repetition == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: 4).repetition == 2)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: 4).repetition == 3)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: 4).repetition == 4)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: 4).repetition == 21)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: 4).repetition == 178)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: 4).repetition == 123457)

        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: 5).repetition == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: 5).repetition == 2)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: 5).repetition == 3)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: 5).repetition == 4)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: 5).repetition == 21)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: 5).repetition == 178)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: 5).repetition == 123457)
    }

    func testResetRepetition() {
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: 2).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: 2).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: 2).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: 2).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: 2).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: 2).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: 2).repetition == 0)

        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: 1).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: 1).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: 1).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: 1).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: 1).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: 1).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: 1).repetition == 0)

        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: 0).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: 0).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: 0).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: 0).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: 0).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: 0).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: 0).repetition == 0)
    }

}
