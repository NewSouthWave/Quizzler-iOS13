//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var questionNumber = 0
    
    let quiz = ["2 is prime number": "True", "16 is prime number" : "False", "All of prime numbers are odd": "False"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateLabel()
    }

    @IBAction func answerBtnPressed(_ sender: UIButton) {
        if questionNumber < 3 {
            if Array(quiz)[questionNumber].value == sender.titleLabel?.text {
                questionLabel.textColor = .green
            } else {
                questionLabel.textColor = .red

            }
            if questionNumber < 3 {
                questionNumber += 1
            }            
            updateLabel()
        }
        
        
    }
    
    func updateLabel() {
        if questionNumber < 3 {
            questionLabel.text = Array(quiz)[questionNumber].key    // 딕셔너리를 배열 형태로 만들어 키값(질문 문장)에 접근
        }
            
        
           
    }
}

