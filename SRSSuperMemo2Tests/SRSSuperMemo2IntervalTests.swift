//
//  SRSSuperMemo2IntervalTests.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 02/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import XCTest
@testable import SRSSuperMemo2

class SRSSuperMemo2IntervalTests: SRSSuperMemo2Tests {

    func testFirstRepetitionInterval() {
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .three).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .four).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .five).interval == 1)
    }

    func testSecondrepetitionInterval() {
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .three).interval == 6)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .four).interval == 6)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .five).interval == 6)
    }

    func testResetInterval() {
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .zero).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .one).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: .two).interval == 1)

        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .zero).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .one).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: .two).interval == 1)

        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: .zero).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: .one).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: .two).interval == 1)

        XCTAssert(gradedItem(item: SRSItem(repetition: 23), grade: .zero).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 23), grade: .one).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 23), grade: .two).interval == 1)
    }

    func testNLargerThanTwoIntervals() {
        // grade 3
        
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 0, repetition: 2), grade: .three).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 1, repetition: 10), grade: .three).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 2, repetition: 100), grade: .three).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 10, repetition: 100), grade: .three).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 0, repetition: 2), grade: .three).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 1, repetition: 10), grade: .three).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 2, repetition: 100), grade: .three).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 10, repetition: 100), grade: .three).interval == 25)

        // easinessFactor minimum is 1.3
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 0, repetition: 2), grade: .three).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 1, repetition: 10), grade: .three).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 2, repetition: 100), grade: .three).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 10, repetition: 100), grade: .three).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 0, repetition: 2), grade: .three).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 1, repetition: 10), grade: .three).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 2, repetition: 100), grade: .three).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 10, repetition: 100), grade: .three).interval == 13)

        // easinessFactor max is 2.5
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 0, repetition: 2), grade: .three).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 1, repetition: 10), grade: .three).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 2, repetition: 100), grade: .three).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 10, repetition: 100), grade: .three).interval == 25)

        // grade 4

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 0, repetition: 2), grade: .four).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 1, repetition: 10), grade: .four).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 2, repetition: 100), grade: .four).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 10, repetition: 100), grade: .four).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 0, repetition: 2), grade: .four).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 1, repetition: 10), grade: .four).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 2, repetition: 100), grade: .four).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 10, repetition: 100), grade: .four).interval == 25)

        // easinessFactor minimum is 1.3
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 0, repetition: 2), grade: .four).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 1, repetition: 10), grade: .four).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 2, repetition: 100), grade: .four).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 10, repetition: 100), grade: .four).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 0, repetition: 2), grade: .four).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 1, repetition: 10), grade: .four).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 2, repetition: 100), grade: .four).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 10, repetition: 100), grade: .four).interval == 13)

        // easinessFactor max is 2.5
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 0, repetition: 2), grade: .four).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 1, repetition: 10), grade: .four).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 2, repetition: 100), grade: .four).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 10, repetition: 100), grade: .four).interval == 25)

        // grade 5

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 0, repetition: 2), grade: .five).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 1, repetition: 10), grade: .five).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 2, repetition: 100), grade: .five).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 10, repetition: 100), grade: .five).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 0, repetition: 2), grade: .five).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 1, repetition: 10), grade: .five).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 2, repetition: 100), grade: .five).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 10, repetition: 100), grade: .five).interval == 25)

        // easinessFactor minimum is 1.3
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 0, repetition: 2), grade: .five).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 1, repetition: 10), grade: .five).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 2, repetition: 100), grade: .five).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 10, repetition: 100), grade: .five).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 0, repetition: 2), grade: .five).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 1, repetition: 10), grade: .five).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 2, repetition: 100), grade: .five).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 10, repetition: 100), grade: .five).interval == 13)

        // easinessFactor max is 2.5
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 0, repetition: 2), grade: .five).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 1, repetition: 10), grade: .five).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 2, repetition: 100), grade: .five).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 10, repetition: 100), grade: .five).interval == 25)
    }

}
