//
//  GameViewModel.swift
//  Code History
//
//  Created by Mat on 24.05.21.
//

import SwiftUI

class GameViewModel: ObservableObject {

    @Published private var game = Game()

    var currentQuestion: Question {
        game.currentQuestion
    }

    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }

    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        }
        return false
    }

    var gameIsOver: Bool {
        game.isOver
    }

    var correctGuesses: Int {
        game.guessCount.correct
    }

    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }

    func makeGuesses(atIndex index: Int) {
        game.makeGuessesForCurrentQuestion(atIndex: index)
    }

    func displayNextScreen(){
        game.updateGameStatus()
    }

    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            }
            if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.main
        }
    }
}
