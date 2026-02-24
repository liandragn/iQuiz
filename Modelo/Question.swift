//
//  Question.swift
//  iQuiz
//
//  Created by Liandra Nascimento on 24/02/26.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", answers: ["Expectro Patronum", "Avada Kedavra", "Expelliarmus"], correctAnswer: 2),
    Question(title: "Quando foi lançado o filme Avatar 2?", answers: ["2014", "2022", "2023"], correctAnswer: 1),
    Question(title: "Quando foi lançado o filme Vingadores Ultimato?", answers: ["2017", "2018", "2019"], correctAnswer: 2)
]
