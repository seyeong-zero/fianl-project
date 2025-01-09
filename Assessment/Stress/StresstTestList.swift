//
//  testList.swift
//  Final Project
//
//  Created by seyeong on 19/04/2023.
//

import Foundation

struct stress {
    var questionsNumber = 0
    var stresstotalCheckedNumber = 0
    var stressweakScore = 0
    var stressmiddleScore = 0
    var stresshardScore = 0
    
    
    let Question = [
        
        stressTest(Q: "", A: ""),
        stressTest(Q: "", A: ""),
        stressTest(Q: "", A: ""),
        stressTest(Q: "", A: ""),
        stressTest(Q: "", A: ""),
        stressTest(Q: "", A: ""),
        stressTest(Q: "", A: ""),
        stressTest(Q: "", A: ""),
        stressTest(Q: "", A: ""),
        stressTest(Q: "", A: ""),
        stressTest(Q: "Press finish Button!" , A: "")
 
    ]
    
    
    //show Question String
    func stressgetQuestions() -> String {
        return Question[questionsNumber].Question
    }
    
    
    //view next Question
    mutating func stressviewNextQuestion() {
        
        if questionsNumber + 1 < Question.count {
            questionsNumber += 1
        } else {
            questionsNumber = 10
        }
    }
    
    //for progressBar
    func stressgetProgress() -> Float {
        return Float(questionsNumber) / Float(Question.count)
    }
    
    
    mutating func stresstypeOfAnswer(UserAnswer: String)->Int {
        
        if UserAnswer == "weak"{
            stressweakScore += 1
        }
        
        else if UserAnswer == "middle"{
            stressmiddleScore += 1
        }
        
        else if UserAnswer == "hard" {
            stresshardScore += 1
        }
        
        stressmiddleScore = stressmiddleScore * 3
        stresshardScore = stresshardScore * 5
        
        stresstotalCheckedNumber = stressweakScore + stressmiddleScore + stresshardScore
        
        return stresstotalCheckedNumber
        
    }
    
    
    
    
    
}



