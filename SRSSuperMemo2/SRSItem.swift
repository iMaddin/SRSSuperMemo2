//
//  SRSItem.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 02/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import Foundation

struct SRSItem: SRSItemProtocol {

    var easinessFactor: Double
    var interval: Int
    var repetition: Int

    init(easinessFactor: Double = 2.5, interval: Int = 0, repetition: Int = 0) {
    	self.easinessFactor = easinessFactor
    	self.interval = interval
    	self.repetition = repetition
    }
    
}
