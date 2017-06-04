//
//  ExampleFlashcardApp.swift
//  SRSSuperMemo2
//
//  Created by Maddin on 04/06/2017.
//  Copyright © 2017 Maddin. All rights reserved.
//

import Foundation

struct ExampleFlashcardApp {

    var sm2Engine = SM2Engine()
    let dataModel = DataModel()

    func runApp() {
        let flashcard = createFlashCard()
        let userResponse: SM2Grade = .three

        var gradedFlashCard = sm2Engine.gradeSRSItem(item: flashcard, grade: userResponse)
        gradedFlashCard.previousDate = flashcard.nextDate
        gradedFlashCard.nextDate = Date().timeIntervalSince1970
        dataModel.replace(flashcard: flashcard, withGradedCard: gradedFlashCard)
    }

    func createFlashCard() -> SRSItem {
        var flashcard = SRSItem()
        flashcard.front = "💁🏼🎤"
        flashcard.back = "テイラースウィフト"
        return flashcard
    }

}

struct DataModel {
    func replace(flashcard: SRSItem, withGradedCard: SRSItem) {}
}
