//
//  SRSGrade.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 03/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import Foundation

enum SRSGrade: Int {
    // < 3 only reset the interval & repetition count
    case zero
    case one
    case two

    // >= 3 increase interval & repetition count

    // decreases easiness factor
    case three
    // easiness factor stays the same
    case four
    // increases easiness factor
    case five
}
