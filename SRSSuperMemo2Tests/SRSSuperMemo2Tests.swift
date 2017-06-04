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

    // 6. If the quality response was lower than 3 then start repetitions for the item from the beginning without changing the E-Factor (i.e. use intervals I(1), I(2) etc. as if the item was memorized anew).
    func testResetRepetitionWithoutChangingEasinessFactor() {
        let graded2 = gradedItem(item: SRSItem(easinessFactor: 1.56, repetition: 3245), grade: .two)
        XCTAssert(graded2.repetition == 0 && graded2.easinessFactor == 1.56)

        let graded1 = gradedItem(item: SRSItem(easinessFactor: 1.56, repetition: 3245), grade: .one)
        XCTAssert(graded1.repetition == 0 && graded1.easinessFactor == 1.56)

        let graded0 = gradedItem(item: SRSItem(easinessFactor: 1.56, repetition: 3245), grade: .zero)
        XCTAssert(graded0.repetition == 0 && graded0.easinessFactor == 1.56)

        let graded5 = gradedItem(item: SRSItem(easinessFactor: 1.56, repetition: 3245), grade: .five)
        XCTAssert(graded5.repetition != 0)

        let graded4 = gradedItem(item: SRSItem(easinessFactor: 1.56, repetition: 3245), grade: .four)
        XCTAssert(graded4.repetition != 0 )

        let graded3 = gradedItem(item: SRSItem(easinessFactor: 1.56, repetition: 3245), grade: .three)
        XCTAssert(graded3.repetition != 0)
    }

    func testNewItemsEasinessFactor() {
        let item = SRSItem()
        XCTAssertTrue(item.easinessFactor == 2.5)
    }

}

extension SRSSuperMemo2Tests {
    func gradedItem(item: SRSItem, grade: SM2Grade) -> SRSItem {
        return sm2Engine.gradeSRSItem(item: item, grade: grade)
    }
}
