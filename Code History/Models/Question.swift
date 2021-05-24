//
//  Question.swift
//  Code History
//
//  Created by Mat on 23.05.21.
//

import Foundation

struct Question: Hashable {

    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int

    static var allQuestions = [
        Question(
            questionText: "Who invented the World Wide Web?",
            possibleAnswers: [
                "Steven Jobs",
                "Linus Torvalds",
                "Bill Gates",
                "Tim Berners-Lee"],
            correctAnswerIndex: 3),
        Question(
            questionText: "What was the first object oriented programming language?",
            possibleAnswers: [
                "Simula",
                "Python",
                "Swift",
                "C"
            ],
            correctAnswerIndex: 0)
    ]

    init(questionText: String, possibleAnswers: [String], correctAnswerIndex: Int) {
        self.questionText = questionText
        self.possibleAnswers = possibleAnswers
        self.correctAnswerIndex = correctAnswerIndex
    }
}
