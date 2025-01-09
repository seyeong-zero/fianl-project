//
//  CheckFunc.swift
//  Final Project
//
//  Created by seyeong on 18/04/2023.
//

import Foundation

struct CheckFunc {
    
    var ListNumber = 0
    var totalCheckNumner = 0
    
    let Question = [
        
        CheckList(L: "Have I eaten meals ?", C: "Yes"),
        CheckList(L: "Have I connected with anyone? ", C: "Yes"),
        CheckList(L: "Have I showered? ", C: "Yes"),
        CheckList(L: "Have I had enough sleep?", C: "Yes"),
        CheckList(L: "Have I exercised today? ", C: "Yes"),
        CheckList(L: "Have I kept myself organised ? ", C: "Yes"),
        CheckList(L: "Have I Drank enough water ?", C: "Yes"),
        
        CheckList(L: "Press Finish Button!", C: "Yes"),

        
    ]
    
    
    
    mutating func getCheckedNum() -> Int {
        return totalCheckNumner
    }
    
    
    func getQuestionText() -> String {
        return Question[ListNumber].List
    }
    
    func getProgress() -> Float {
        return Float(ListNumber) / Float(Question.count)
    }
    
    
    mutating func viewNextList() {
        
        if ListNumber + 1 < Question.count {
            ListNumber += 1
        } else {
            ListNumber = 7
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == Question[ListNumber].UserCheck {
            totalCheckNumner += 1
            return true
        } else {
            return false
        }
    }
}
