//
//  QuestionView.swift
//  Code History
//
//  Created by Mat on 24.05.21.
//

import SwiftUI

struct QuestionView: View {

    @EnvironmentObject var viewModel: GameViewModel
    let question: Question

    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    Button(action: {
                        viewModel.makeGuesses(atIndex: answerIndex)

                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    }
                }
            }
            if viewModel.guessWasMade {
                Button(action: {viewModel.displayNextScreen() }) {
                    BottomTextView(str: "Next")
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
