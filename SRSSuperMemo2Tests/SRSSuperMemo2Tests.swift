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

}

extension SRSSuperMemo2Tests {
    func gradedItem(item: SRSItem, grade: SM2Engine.Grade) -> SRSItem {
        return sm2Engine.gradeSRSItem(item: item, grade: grade)
    }
}
