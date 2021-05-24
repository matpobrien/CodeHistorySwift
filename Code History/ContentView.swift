//
//  ContentView.swift
//  Code History
//
//  Created by Mat on 21.05.21.
//

import SwiftUI


struct ContentView: View {
    
    let question = Question(
        questionNumber: 1,
        totalQuestions: 10,
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("\(question.questionNumber) / \(question.totalQuestions)")
                    .font(.callout)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding()
                Text(question.questionText)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .padding()
                Spacer()
                HStack {
                    ForEach(0 ..< question.possibleAnswers.count) { answerIndex in
                        Button(
                            action: {
                                print("Tapped on \(question.possibleAnswers[answerIndex])")
                                mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                            },
                            label: {
                                ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])

                            }
                        )
                    }
                }
            }.foregroundColor(.white)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

