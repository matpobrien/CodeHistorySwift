//
//  Game.swift
//  Code History
//
//  Created by Mat on 24.05.21.
//

import Foundation

struct Game {
    private let questions = Question.allQuestions.shuffled()
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question : Int]()
    private(set) var isOver = false

    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }

    var numberOfQuestions: Int {
        questions.count
    }

    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }

    mutating func makeGuessesForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }

    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            return
        }
        isOver = true
    }
}
