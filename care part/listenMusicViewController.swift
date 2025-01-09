//
//  listenMusicViewController.swift
//  Final Project
//
//  Created by seyeong on 18/04/2023.
//

import UIKit
import AVFoundation

class listenMusicViewController: UIViewController {
    
    
    
    var player: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func PianoButton(_ sender: UIButton) {
        
        playSoundPiano(soundName: "Piano")

        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
         
            sender.alpha = 1.0
        }
        
    }
    
    
    @IBAction func DrumButton(_ sender: UIButton) {
        
        playSoundDrum(soundName: "Drum")

        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
         
            sender.alpha = 1.0
        }
        
    }
    
    
    
    
    func playSoundPiano(soundName: String) {
        let url = Bundle.main.url(forResource: "Piano", withExtension: "m4a")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }

    func playSoundDrum(soundName: String) {
        let url = Bundle.main.url(forResource: "Drum", withExtension: "m4a")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    
    
    @IBAction func stopButton(_ sender: UIButton) {
        
        player.stop()
        
    }
    
    
    

}
