//
//  AnxietyTestList.swift
//  Final Project
//
//  Created by seyeong on 19/04/2023.
//

import Foundation

struct anxiety{
    
    
    var questionsNumber = 0
    var anxietytotalCheckedNumber = 0
    var anxietyweakScore = 0
    var anxietymiddleScore = 0
    var anxietyhardScore = 0
    
    
    let Question = [
        
        anxietyTest(Q: "", A: ""),
        anxietyTest(Q: "", A: ""),
        anxietyTest(Q: "", A: ""),
        anxietyTest(Q: "", A: ""),
        anxietyTest(Q: "", A: ""),
        anxietyTest(Q: "", A: ""),
        anxietyTest(Q: "", A: ""),
        anxietyTest(Q: "", A: ""),
        anxietyTest(Q: "", A: ""),
        anxietyTest(Q: "", A: "")
        
        
    ]
    
    
    //show Question String
    func anxietygetQuestions() -> String {
        return Question[questionsNumber].Question
    }
    
    
    //view next Question
    mutating func anxietyviewNextQuestion() {
        
        if questionsNumber + 1 < Question.count {
            questionsNumber += 1
        } else {
            questionsNumber = 10
        }
    }
    
    //for progressBar
    func anxietygetProgress() -> Float {
        return Float(questionsNumber) / Float(Question.count)
    }
    
    
    mutating func typeOfAnswer(UserAnswer: String)->Int {
        
        if UserAnswer == "weak"{
            anxietyweakScore += 1
        }
        
        else if UserAnswer == "middle"{
            anxietymiddleScore += 1
        }
        
        else if UserAnswer == "hard" {
            anxietyhardScore += 1
        }
        
        anxietymiddleScore = anxietymiddleScore * 3
        anxietyhardScore = anxietyhardScore * 5
        
        anxietytotalCheckedNumber = anxietyweakScore + anxietymiddleScore + anxietyhardScore
        
        return anxietytotalCheckedNumber
        
    }
    
    
    
    
    
    
    
}
