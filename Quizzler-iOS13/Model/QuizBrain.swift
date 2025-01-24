//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Nam on 1/24/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "2 is prime number", a: "True"),
        Question(q: "16 is prime number", a: "False"),
        Question(q: "All of prime number is odd", a: "False"),
        Question(q: "My phone is iPhone 13", a: "True"),
        
    ]
    
    var questionNumber = 0

    func checkAnswer(_ userAnswer: String) -> Bool{    // "_" 언더바는 외부 파라미터
        print(userAnswer)
        
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
           return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float{
        return Float(questionNumber + 1)/Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
}
