//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Mat on 24.05.21.
//

import SwiftUI
import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int

    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
