//  ViewController.swift
//  Quizzler-iOS13

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressLabel: UIProgressView!
    
    var quizObject  = QuizModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }
    
    @IBAction func answersButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let returnValue = quizObject.checkAnswer(userAnswer)
        
        if returnValue {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizObject.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @objc func updateQuestion() {
        questionLabel.text = quizObject.getQuestion()
        progressLabel.progress = quizObject.getProgress()
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}

