//
//  SRSSuperMemo2EasinessFactorTests.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 02/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import XCTest
@testable import SRSSuperMemo2

class SRSSuperMemo2EasinessFactorTests: SRSSuperMemo2Tests {
    
    func testEasinessFactor() {
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.67), grade: .zero).easinessFactor == 1.67)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.67), grade: .one).easinessFactor == 1.67)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.67), grade: .two).easinessFactor == 1.67)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.67), grade: .three).easinessFactor < 1.67)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.67), grade: .four).easinessFactor == 1.67)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.67), grade: .five).easinessFactor > 1.67)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.89), grade: .zero).easinessFactor == 1.89)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.89), grade: .one).easinessFactor == 1.89)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.89), grade: .two).easinessFactor == 1.89)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.89), grade: .three).easinessFactor < 1.89)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.89), grade: .four).easinessFactor == 1.89)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.89), grade: .five).easinessFactor > 1.89)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.2), grade: .zero).easinessFactor == 2.2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.2), grade: .one).easinessFactor == 2.2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.2), grade: .two).easinessFactor == 2.2)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.2), grade: .three).easinessFactor < 2.2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.2), grade: .four).easinessFactor == 2.2)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.2), grade: .five).easinessFactor > 2.2)
    }

    func testMinimumEasinessFactor() {
        let minimumEasinessFactor = 1.3
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: .zero).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: .one).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: .two).easinessFactor == minimumEasinessFactor)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: .three).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: .four).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.3), grade: .five).easinessFactor > minimumEasinessFactor)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1.0), grade: .two).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 0.0), grade: .zero).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 0.0), grade: .one).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 0.0), grade: .two).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 0.0), grade: .three).easinessFactor == minimumEasinessFactor)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0), grade: .zero).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0), grade: .one).easinessFactor == minimumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: -23.0), grade: .two).easinessFactor == minimumEasinessFactor)
    }

    func testMaximumEasinessFactor() {
        let maximumEasinessFactor = 2.5
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: .zero).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: .one).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: .two).easinessFactor == maximumEasinessFactor)
        
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: .three).easinessFactor < maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: .four).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.5), grade: .five).easinessFactor == maximumEasinessFactor)

        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 3.0), grade: .five).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 1000.0), grade: .five).easinessFactor == maximumEasinessFactor)
        XCTAssert(gradedItem(item: SRSItem(easinessFactor: 2.6), grade: .five).easinessFactor == maximumEasinessFactor)
    }
    
}
