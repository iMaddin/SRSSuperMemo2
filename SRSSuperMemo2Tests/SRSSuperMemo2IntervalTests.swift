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
    
    func testChanged() {
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: 3).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: 3).interval == 6)

        // n>2
        // grade 3
        
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 0, repetition: 2), grade: 3).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 1, repetition: 10), grade: 3).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 2, repetition: 100), grade: 3).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 10, repetition: 100), grade: 3).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 0, repetition: 2), grade: 3).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 1, repetition: 10), grade: 3).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 2, repetition: 100), grade: 3).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 10, repetition: 100), grade: 3).interval == 25)

        // easinessFactor minimum is 1.3
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 0, repetition: 2), grade: 3).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 1, repetition: 10), grade: 3).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 2, repetition: 100), grade: 3).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 10, repetition: 100), grade: 3).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 0, repetition: 2), grade: 3).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 1, repetition: 10), grade: 3).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 2, repetition: 100), grade: 3).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 10, repetition: 100), grade: 3).interval == 13)

        // easinessFactor max is 2.5
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 0, repetition: 2), grade: 3).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 1, repetition: 10), grade: 3).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 2, repetition: 100), grade: 3).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 10, repetition: 100), grade: 3).interval == 25)

        // grade 4

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 0, repetition: 2), grade: 4).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 1, repetition: 10), grade: 4).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 2, repetition: 100), grade: 4).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 10, repetition: 100), grade: 4).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 0, repetition: 2), grade: 4).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 1, repetition: 10), grade: 4).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 2, repetition: 100), grade: 4).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 10, repetition: 100), grade: 4).interval == 25)

        // easinessFactor minimum is 1.3
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 0, repetition: 2), grade: 4).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 1, repetition: 10), grade: 4).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 2, repetition: 100), grade: 4).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 10, repetition: 100), grade: 4).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 0, repetition: 2), grade: 4).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 1, repetition: 10), grade: 4).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 2, repetition: 100), grade: 4).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 10, repetition: 100), grade: 4).interval == 13)

        // easinessFactor max is 2.5
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 0, repetition: 2), grade: 4).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 1, repetition: 10), grade: 4).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 2, repetition: 100), grade: 4).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 10, repetition: 100), grade: 4).interval == 25)

        // grade 5

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 0, repetition: 2), grade: 5).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 1, repetition: 10), grade: 5).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 2, repetition: 100), grade: 5).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3, interval: 10, repetition: 100), grade: 5).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 0, repetition: 2), grade: 5).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 1, repetition: 10), grade: 5).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 2, repetition: 100), grade: 5).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5, interval: 10, repetition: 100), grade: 5).interval == 25)

        // easinessFactor minimum is 1.3
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 0, repetition: 2), grade: 5).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 1, repetition: 10), grade: 5).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 2, repetition: 100), grade: 5).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0, interval: 10, repetition: 100), grade: 5).interval == 13)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 0, repetition: 2), grade: 5).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 1, repetition: 10), grade: 5).interval == 2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 2, repetition: 100), grade: 5).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0, interval: 10, repetition: 100), grade: 5).interval == 13)

        // easinessFactor max is 2.5
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 0, repetition: 2), grade: 5).interval == 0)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 1, repetition: 10), grade: 5).interval == 3)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 2, repetition: 100), grade: 5).interval == 5)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 88.0, interval: 10, repetition: 100), grade: 5).interval == 25)
    }

    func testResetInterval() {
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: 0).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: 1).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 0), grade: 2).interval == 1)

        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: 0).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: 1).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 1), grade: 2).interval == 1)

        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: 0).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: 1).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 2), grade: 2).interval == 1)

        XCTAssert(gradedItem(item: SRSItem(repetition: 23), grade: 0).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 23), grade: 1).interval == 1)
        XCTAssert(gradedItem(item: SRSItem(repetition: 23), grade: 2).interval == 1)
    }

}
