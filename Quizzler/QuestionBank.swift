//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Rahul Ravi Prakash on 13/06/18.
//  Copyright © 2018 Rahul Ravi Prakash. All rights reserved.
//

import Foundation

class QuestionBank {
	
	//Create an instance of the Question class
	//An Empty arary of question
	var allQuestions = [Question]()
	
	init() {
		allQuestions.append(Question(text: "Valentine's day is banned in Saudi Arabia", correctAnswer: true))
		allQuestions.append(Question(text: "Delhi is the capital of Indonesia", correctAnswer: false))
		allQuestions.append(Question(text: "C is a procedural language.", correctAnswer: true))
		allQuestions.append(Question(text: "Python is used for iOS programming.", correctAnswer: false))
		allQuestions.append(Question(text: "Father's day is not banned in India", correctAnswer: true))
		allQuestions.append(Question(text: "Manmohan Singh is prime minister of India", correctAnswer: false))
		allQuestions.append(Question(text: "Ganga is a holy river.", correctAnswer: true))
		allQuestions.append(Question(text: "Nothing is permanent in this world", correctAnswer: true))
		allQuestions.append(Question(text: "Microsoft is owned by Steve Jobs", correctAnswer: false))
		allQuestions.append(Question(text: "Google is a search engine.", correctAnswer: true))
		
	}
	
	
}
