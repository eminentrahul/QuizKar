//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Rahul Ravi Prakash on 13/06/18.
//  Copyright © 2018 Rahul Ravi Prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
	
	var questionList = QuestionBank()
	var selectedAnswer = false
	var questionNumber : Int = 0
	var score : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		nextQuestion()
		
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
		if sender.tag == 1{
			selectedAnswer = true
		}
		else if sender.tag == 2 {
			selectedAnswer = false
		}
		
		checkAnswer()
		
		questionNumber += 1
		
		nextQuestion()
	 }
    
    
    func updateUI() {
		scoreLabel.text = "Score : \(score)"
		progressLabel.text = "\(questionNumber + 1) / 10"
		
		progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNumber)
		
    }
    

    func nextQuestion() {
		if questionNumber < questionList.allQuestions.count {
			
			questionLabel.text = questionList.allQuestions[questionNumber].questionText
			
			updateUI()
		}
		else {
			let alert = UIAlertController(title: "Awesome", message: "Quiz is finished!", preferredStyle: .alert)
			let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
				self.startOver()
			}
			alert.addAction(restartAction)
			present(alert, animated: true, completion: nil)
		}
    }
    
    
    func checkAnswer() {
		let rightAnswer = questionList.allQuestions[questionNumber].answer
		
		if rightAnswer == selectedAnswer {
			ProgressHUD.showSuccess("Correct")
			score += 1
		}
		else {
			ProgressHUD.showError("Wrong")
		}
		
    }
    
    
    func startOver() {
       questionNumber = 0
		score = 0
		nextQuestion()
    }
    

    
}
