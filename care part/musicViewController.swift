//
//  musicViewController.swift
//  Final Project
//
//  Created by seyeong on 12/04/2023.
//


import UIKit
import AVFoundation

class musicViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        //current 에서 c냐 뭐냐 알려주고 == soundname에
        
        //Reduces the sender's (the button that got pressed) opacity to half.
        
       // 알파값(투명도) 지정

       // 알파값은 0.0(완전 투명) ~ 1.0(완전 불투명) 값을 가질 수 있습니다.
        
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            /*
             DispatchQueue.main.asyncAfter(deadline: .now() + 0.2)은 현재 실행 중인 스레드에서 0.2초 후에 실행될 비동기적인 작업을 생성합니다.

             이 코드는 DispatchQueue 클래스의 main 큐를 사용하여 작업을 스케줄링하고, asyncAfter(deadline:execute:) 메서드를 사용하여 지정된 시간 이후에 실행될 작업을 예약합니다. deadline 매개 변수는 작업이 실행되는 시간을 나타내며, .now() + 0.2는 현재 시간에서 0.2초 후를 의미합니다.

             따라서 이 코드는 현재 스레드에서 0.2초 후에 main 큐에서 실행될 작업을 예약합니다. 이 코드를 사용하여 지정된 시간 이후에 UI 업데이트나 다른 비동기 작업을 실행할 수 있습니다. 예를 들어, 이 코드를 사용하여 지정된 시간 이후에 애니메이션을 실행하거나, 다른 스레드에서 계산을 수행한 다음 그 결과를 UI에 표시할 수 있습니다.
             */
            sender.alpha = 1.0
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        //soundname에 c가 들어오는거임
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
}

/*
 위의 코드는 AVAudioPlayer를 사용하여 WAV 형식의 사운드 파일을 재생하는 방법을 보여주는 코드입니다.

 먼저, Bundle 클래스의 main 속성을 사용하여 앱 번들의 리소스에 접근하고, url(forResource:withExtension:) 메서드를 사용하여 지정된 파일 이름과 확장자를 가진 리소스 파일의 URL을 검색합니다. 이 URL은 soundName에 따라 WAV 파일 리소스의 경로를 나타냅니다.

 그런 다음 AVAudioPlayer 클래스를 사용하여 contentsOf: 매개 변수를 통해 WAV 파일의 URL을 전달합니다. 이렇게하면 AVAudioPlayer 객체가 생성되고, play() 메서드를 호출하여 WAV 파일의 재생을 시작합니다.

 try! 구문은 예외 처리를 위한 것이며, 이 코드에서는 예외가 발생하지 않을 것으로 가정하고 있습니다. 그러나 일반적으로는 예외를 처리하도록 권장됩니다. 예를 들어, try? 구문을 사용하여 예외가 발생하면 nil을 반환하도록하거나 do-catch 블록을 사용하여 예외를 처리할 수 있습니다.
 */






