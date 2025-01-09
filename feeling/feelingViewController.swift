//
//  feelingViewController.swift
//  Final Project
//
//  Created by seyeong on 17/04/2023.
//


import SwiftUI
import Charts
import UIKit

class feelingViewController: UIViewController {


        override func viewDidLoad() {
            super.viewDidLoad()
           
        }
        
        // 버튼 선택 개수를 저장할 딕셔너리 생성
        
        var Fear: Double = 0.0
        var Anger: Double = 0.0
        var Love: Double = 0.0
        var Surprise: Double = 0.0
        var Sadness: Double = 0.0
        var joy: Double = 0.0
        var error: Double = 0.0

        
        var finalResultSad = "0.0"
        var finalResultJoy = "0.0"
        var finalResultLove = "0.0"
        var finalResultAnger = "0.0"
        var finalResultSurprise = "0.0"
        var finalResultFear = "0.0"
        

        
        
        
        //var selectedCounts = [String: Int]()

        // 버튼 클릭 핸들러
        @IBAction func buttonClicked(_ sender: UIButton) {
            
            
            let mood = sender.titleLabel!.text!
            
            switch mood {
            case "Sadness":
                Sadness += 1
            
            case "Fear":
                Fear += 1
            case "Love":
                Love += 1
            case "Anger":
                Anger += 1
            case "Joy":
                joy += 1
            case "Surprise":
                Surprise += 1
            default:
                print("Error")
            }
           

          
            
        }
        

        @IBAction func finishButton(_ sender: Any) {
            
            
            // for debuging
            print("Sad \( Sadness)")
            print("Joy \( joy)")
            print("Love \( Love)")
            print("Anger \( Anger)")
            print("Surprise \( Surprise)")
            print("Fear \( Fear)")
            
      
            //get total rate results
            let Sad = Double(Sadness / 6) * 100
            let Joy = Double(joy / 6) * 100
            let Love = Double(Love / 6) * 100
            let Anger = Double(Anger / 5) * 100
            let Surprise = Double(Surprise / 6) * 100
            let Fear = Double(Fear / 5) * 100
            
            
            finalResultSad = String(format: "%.1f", Sad)
            finalResultJoy = String(format: "%.1f",Joy)
            finalResultLove = String(format: "%.1f", Love)
            finalResultAnger = String(format: "%.1f", Anger)
            finalResultSurprise = String(format: "%.1f", Surprise)
            finalResultFear = String(format: "%.1f", Fear)
            
            self.performSegue(withIdentifier: "Results", sender: self)
            

            
            
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "Results" {
                
                let destinationVC = segue.destination as! rateViewController
                
                destinationVC.viewSad = finalResultSad
                destinationVC.viewJoy = finalResultJoy
                destinationVC.viewLove = finalResultLove
                destinationVC.viewAnger = finalResultAnger
                destinationVC.viewSurprise = finalResultSurprise
                destinationVC.viewFear =   finalResultFear
               
            }
        }

    }



