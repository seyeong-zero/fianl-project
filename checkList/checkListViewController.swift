//
//  checkListViewController.swift
//  Final Project
//
//  Created by seyeong on 18/04/2023.
//

import UIKit

class checkListViewController: UIViewController {
    
    
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var NoButton: UIButton!
    @IBOutlet weak var progressButton: UIProgressView!
    @IBOutlet weak var totalNumber: UILabel!
    @IBOutlet weak var Listlabel: UILabel!
    
    var CheckProcess = CheckFunc()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        
        //debuging
        print(sender.titleLabel!.text!)
        
        
        let userGotItRight = CheckProcess.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        CheckProcess.viewNextList()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(newUI), userInfo: nil, repeats: false)
    }
    
    @objc func newUI() {
        yesButton.backgroundColor = UIColor.clear
        NoButton.backgroundColor = UIColor.clear
        
        Listlabel.text = CheckProcess.getQuestionText()
        progressButton.progress = CheckProcess.getProgress()
        
        totalNumber.text = "(CheckProcess.getCheckedNum())"
    }
    
    
    
    var shouldPerformSegue = false
    
    
    
    @IBAction func FinishedButton(_ sender: UIButton) {
        
        print("finish")
        print(CheckProcess.getCheckedNum())
        
        if CheckProcess.getCheckedNum() >= 7{
            shouldPerformSegue = true
            self.performSegue(withIdentifier: "yes", sender: nil)
            
            
        } else {
            shouldPerformSegue = false
            self.performSegue(withIdentifier: "no", sender: nil)

        }
        
        
        // segue 실행
        //performSegue(withIdentifier: "Yes", sender: nil)
    
        
        
        
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String?, sender: Any?) -> Bool {
        return shouldPerformSegue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "yes" {
            
            let CompletedListViewController = segue.destination as! CompletedListViewController
            
            
        }
        
        else if segue.identifier == "no" {
            let CompletedListViewController = segue.destination as! checkListResultViewController
        }
        
        
    }
}
