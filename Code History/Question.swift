//
//  Question.swift
//  Code History
//
//  Created by Mat on 23.05.21.
//

import Foundation

struct Question {
    let questionNumber: Int
    let totalQuestions: Int
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int

    init(questionNumber: Int, totalQuestions: Int, questionText: String, possibleAnswers: [String], correctAnswerIndex: Int) {
        self.questionNumber = questionNumber
        self.totalQuestions = totalQuestions
        self.questionText = questionText
        self.possibleAnswers = possibleAnswers
        self.correctAnswerIndex = correctAnswerIndex
    }
}
