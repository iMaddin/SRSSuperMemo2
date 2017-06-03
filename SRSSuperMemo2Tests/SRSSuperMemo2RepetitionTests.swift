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
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .three).repetition == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .three).repetition == 2)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: .three).repetition == 3)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: .three).repetition == 4)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: .three).repetition == 21)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: .three).repetition == 178)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: .three).repetition == 123457)

        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .four).repetition == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .four).repetition == 2)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: .four).repetition == 3)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: .four).repetition == 4)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: .four).repetition == 21)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: .four).repetition == 178)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: .four).repetition == 123457)

        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .five).repetition == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .five).repetition == 2)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: .five).repetition == 3)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: .five).repetition == 4)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: .five).repetition == 21)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: .five).repetition == 178)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: .five).repetition == 123457)
    }

    func testResetRepetition() {
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .two).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .two).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: .two).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: .two).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: .two).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: .two).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: .two).repetition == 0)

        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .one).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .one).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: .one).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: .one).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: .one).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: .one).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: .one).repetition == 0)

        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .zero).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .zero).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: .zero).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 3), grade: .zero).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 20), grade: .zero).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 177), grade: .zero).repetition == 0)
        XCTAssert(gradedItem(item: SRSItem(repetition: 123456), grade: .zero).repetition == 0)
    }

}
