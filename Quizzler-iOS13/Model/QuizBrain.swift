//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Jonathan Garcia on 10/17/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(q: "I love Pizza?", a: "True"),
        Question(q: "Cars can fly?", a: "False"),
        Question(q: "Tedito is crazy?", a: "True"),
        Question(q: "BOYZNIGHT??", a: "True"),
        Question(q: "Ley Seca??", a: "False"),
        Question(q: "Drink day??", a: "True"),
        Question(q: "IOS??", a: "True"),
        Question(q: "Best App??", a: "False"),
        Question(q: "God Day??", a: "True")
        
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}
