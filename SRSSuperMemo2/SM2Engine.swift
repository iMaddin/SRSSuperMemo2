//
//  SM2Engine.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 02/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import Foundation

struct SM2Engine {

    typealias Grade = Int
    let maxQuality = 5
    let minimumEasinessFactor = 1.3
    let maximumEasinessFactor = 2.5

    func gradeSRSItem<T: SRSItemProtocol>(item: T, grade: Grade) -> T {
        assert(grade <= maxQuality)
        var gradedItem = item

        if grade >= 3 {
            switch item.repetition {
            case 0:
                gradedItem.interval = 1
                gradedItem.repetition = 1
            case 1:
                gradedItem.interval = 6
                gradedItem.repetition = 2
            default:
                gradedItem = verifyEasinessFactor(item: gradedItem)

                gradedItem.interval = Int(ceil(Double(gradedItem.interval) * gradedItem.easinessFactor))
                gradedItem.repetition += 1
            }

            // 3 decreases easinessFactor, 4 does not change easinessFactor, 5 increases easinessFactor
            let qualityFactor = Double(maxQuality - grade)
            let newEasinessFactor = gradedItem.easinessFactor + (0.1 - qualityFactor * (0.08 + qualityFactor * 0.02))
            gradedItem.easinessFactor = newEasinessFactor

            gradedItem = verifyEasinessFactor(item: gradedItem)
        } else { // easinessFactor 0, 1, 2
            gradedItem.interval = 1
            gradedItem.repetition = 0
        }
        
        return gradedItem
    }

    fileprivate func verifyEasinessFactor<T: SRSItemProtocol>(item: T) -> T {
        var newItem = item
        if newItem.easinessFactor < minimumEasinessFactor {
            newItem.easinessFactor = minimumEasinessFactor
        } else if newItem.easinessFactor > maximumEasinessFactor {
            newItem.easinessFactor = maximumEasinessFactor
        }
        return newItem
    }

}
