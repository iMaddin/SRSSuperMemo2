//
//  SRSItemProtocol.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 02/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import Foundation

public protocol SM2ItemProtocol {
    var easinessFactor: Double { get set }
    var interval: Int { get set }
    var repetition: Int { get set }
}
