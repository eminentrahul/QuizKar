//
//  Question.swift
//  Quizzler
//
//  Created by Rahul Ravi Prakash on 13/06/18.
//  Copyright © 2018 Rahul Ravi Prakash. All rights reserved.
//

import Foundation

//Create a new class
class Question {
	
	//Here is the property of the Question class
	let questionText : String
	let answer : Bool
	
	//Initialization
	//Method to initialize the property of the class
	//Method is something associated with the class, unlike function which is not associated with any class.
	init(text : String, correctAnswer : Bool) {
		questionText = text
		answer = correctAnswer
	}
}
