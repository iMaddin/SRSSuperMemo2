//
//  SM2Engine.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 02/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import Foundation

public struct SM2Engine {

    let maxQuality = 5
    let minimumEasinessFactor = 1.3
    let maximumEasinessFactor = 2.5

    public func gradeSRSItem<T: SM2ItemProtocol>(item: T, grade: SM2Grade) -> T {
        let rawGrade = grade.rawValue
        assert(rawGrade <= maxQuality)
        var gradedItem = item
        gradedItem = verifyEasinessFactor(item: gradedItem)

        if rawGrade >= 3 {
            switch item.repetition {
            case 0:
                gradedItem.interval = 1
                gradedItem.repetition = 1
            case 1:
                gradedItem.interval = 6
                gradedItem.repetition = 2
            default:
                gradedItem.interval = Int(ceil(Double(gradedItem.interval) * gradedItem.easinessFactor))
                gradedItem.repetition += 1
            }

            // 3 decreases easinessFactor, 4 does not change easinessFactor, 5 increases easinessFactor
            let qualityFactor = Double(maxQuality - rawGrade)
            let newEasinessFactor = gradedItem.easinessFactor + (0.1 - qualityFactor * (0.08 + qualityFactor * 0.02))
            gradedItem.easinessFactor = newEasinessFactor
        } else { // easinessFactor 0, 1, 2
            gradedItem.interval = 1
            gradedItem.repetition = 0
        }
        gradedItem = verifyEasinessFactor(item: gradedItem)

        return gradedItem
    }

    fileprivate func verifyEasinessFactor<T: SM2ItemProtocol>(item: T) -> T {
        var newItem = item
        if newItem.easinessFactor < minimumEasinessFactor {
            newItem.easinessFactor = minimumEasinessFactor
        } else if newItem.easinessFactor > maximumEasinessFactor {
            newItem.easinessFactor = maximumEasinessFactor
        }
        return newItem
    }

    public init() {}
}
