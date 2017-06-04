//
//  SRSItem.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 02/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import Foundation

struct SRSExampleItem: SM2ItemProtocol, FlashcardProtocol {

    var easinessFactor: Double
    var interval: Int
    var repetition: Int

    typealias DataType = String
    typealias CalendarDateType = TimeInterval
    typealias IdentifierType = UUID

    var front: String = ""
    var back: String = ""
    var previousDate: TimeInterval = Date().timeIntervalSince1970
    var nextDate: TimeInterval = Date().timeIntervalSince1970
    var identifier: UUID

    init(easinessFactor: Double = 2.5, interval: Int = 0, repetition: Int = 0, identifier: UUID = UUID()) {
    	self.easinessFactor = easinessFactor
    	self.interval = interval
    	self.repetition = repetition
        self.identifier = identifier
    }
    
}
