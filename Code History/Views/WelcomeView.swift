//
//  WelcomeView.swift
//  Code History
//
//  Created by Mat on 24.05.21.
//

import SwiftUI

struct WelcomeView: View {

    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(

                        destination: GameView(),
                        label: {
                            HStack {
                                Spacer()
                                BottomTextView(str: "Okay, let's go!")
                                Spacer()
                            }.background(GameColor.accent)
                        }
                    )
                }.foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
