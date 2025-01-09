//
//  relexTimerViewController.swift
//  Final Project
//
//  Created by seyeong on 13/04/2023.
//

import UIKit

class relexTimerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var timeprogress: UIProgressView!
    
    @IBOutlet weak var timetext: UILabel!
    var timer = Timer()
    var total = 0
    var secondsPassed = 0
    
    let timeSelect = ["60Button": 60, "180Button": 180, "300Button": 300]
    
    
    @IBAction func selectTimeButton(_ sender: UIButton) {
        
        
        timer.invalidate()
        let time = sender.titleLabel!.text!
        total = timeSelect[time]!

        timeprogress.progress = 0.0
        secondsPassed = 0
        timetext.text = "start" 

        timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
        
            
    }
    
    
    @objc func updateTimer() {
        if secondsPassed < total {
            secondsPassed += 1
            timeprogress.progress = Float(secondsPassed) / Float(total)
            print(Float(secondsPassed) / Float(total))
        } else {
            timer.invalidate()
            timetext.text = "DONE!"
            
            //let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            //player = try! AVAudioPlayer(contentsOf: url!)
            //player.play()
        }
    }
    
    
    


}
