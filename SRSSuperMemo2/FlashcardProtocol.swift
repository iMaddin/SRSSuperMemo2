//
//  SRSItemProtocol.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 03/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import Foundation

protocol FlashcardProtocol {
    associatedtype DataType
    associatedtype CalendarDateType
    associatedtype IdentifierType
    
    var front: DataType { get set }
    var back: DataType { get set }
    var previousDate: CalendarDateType { get set }
    var nextDate: CalendarDateType { get set }
    var identifier: IdentifierType { get }
}
