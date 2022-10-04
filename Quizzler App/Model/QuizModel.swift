//
//  QuizModel.swift
//  Quizzler-iOS13
//
//  Created by hari-pt5664 on 07/08/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizModel {
    let quizArray = [
        Questions(q: "Sunrises in the West", a: "False"),
        Questions(q: "Chennai is the Capital of Tamilnadu", a: "True"),
        Questions(q: "A slug's blood is green.", a: "True"),
        Questions(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Questions(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Questions(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Questions(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Questions(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Questions(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Questions(q: "Google was originally called 'Backrub'.", a: "True"),
        Questions(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Questions(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Questions(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Questions(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True"),
        Questions(q: "India got the freedom in 1947", a: "True"),
        Questions(q: "Dog is a Bird", a: "False")
    ]
    var questionNo = 0
    
    func checkAnswer(_ userAnswer : String) -> Bool {
        if userAnswer == quizArray[questionNo].answer {
            return true
        } else {
            return false
        }
    }
    
    func getQuestion() -> String {
        return quizArray[questionNo].text
    }
    
    func getProgress() -> Float {
        let progress = Float (questionNo+1) / Float(quizArray.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNo + 1 < quizArray.count {
            questionNo += 1
        } else {
            questionNo = 0
        }
    }
    
}
