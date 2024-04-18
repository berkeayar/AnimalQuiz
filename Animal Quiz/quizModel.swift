//
//  quizModel.swift
//  Animal Quiz
//
//  Created by Berke Ayar on 4.04.2024.
//

import Foundation

struct QuizModel{

var img: String?
var text: String?
var answer: [String]
var correct: Int?

}

var myQuiz1 : [QuizModel] = [
    QuizModel(img: "hayvan1",
              text: "Hangi hayvanın hortumu vardır?",
              answer: ["Aslan", "Zürafa", "Fil", "Kurt"],
              correct: 2),
    
    QuizModel(img: "hayvan2",
              text: "Hangi hayvan uçabilir?",
              answer: ["Timsah", "Penguen", "Kartal", "Ayı"],
              correct: 2),
    
    QuizModel(img: "hayvan3",
              text: "Hangi hayvan sürüngenlerden biridir?",
              answer: ["Köpek", "Kedi", "Kaplumbağa", "Aslan"],
              correct: 2),
    
    QuizModel(img: "hayvan4",
              text: "Hangi hayvanın dikenleri vardır?",
              answer: ["Köpek", "Kirpi", "Balina", "Kaplan"],
              correct: 1),
    
    QuizModel(img: "hayvan5",
              text: "Hangi hayvan su altında yaşar?",
              answer: ["Balina", "Tavşan", "Zürafa", "Fil"],
              correct: 0),
    
]

func SaveScore(quiz: String, score: Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore(quiz: String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
