//
//  rateViewController.swift
//  Final Project
//
//  Created by seyeong on 17/04/2023.
//

//
//  rateViewController.swift
//  ff
//
//  Created by seyeong on 16/04/2023.
//

import UIKit
import Charts
import SwiftUI

class rateViewController: UIViewController {
    

    
    @IBOutlet weak var Fear: UILabel!
    @IBOutlet weak var Anger: UILabel!
    @IBOutlet weak var Surprise: UILabel!
    @IBOutlet weak var Joy: UILabel!
    @IBOutlet weak var Sadness: UILabel!
    @IBOutlet weak var Love: UILabel!


    
    var viewSad = "0.0"
    var viewJoy = "0.0"
    var viewLove = "0.0"
    var viewAnger = "0.0"
    var viewSurprise = "0.0"
    var viewFear = "0.0"

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        Fear.text = viewFear
        Anger.text = viewAnger
        Surprise.text = viewSurprise
        Joy.text = viewJoy
        Sadness.text = viewSad
        Love.text = viewLove

        //----------------------- bar ------------
        
    
        var barFear: Double = 0.0
        var barAnger: Double = 0.0
        var barSad: Double = 0.0
        var barSur: Double = 0.0
        var barJoy: Double = 0.0
        var barLove: Double = 0.0
        
        
        barFear = Double(viewFear)!
        barSad = Double(viewSad)!
        barAnger = Double(viewAnger)!
        barJoy = Double(viewJoy)!
        barLove = Double(viewLove)!
        barSur = Double(viewSurprise)!
        
        
   
        let BarRate = BarChart(data: [barAnger, barFear, barLove, barSur, barSad, barJoy] )
        
        
        
        
        
        let controller = UIHostingController(rootView: BarRate)
        //code creates an instance of the UIHostingController class, which is used to host SwiftUI views in UIKit-based apps. The "rootView" parameter specifies the SwiftUI view that will be hosted by the controller. In this case, the view is called "BarRate".
        

        addChild(controller)
        //code adds the child view controller to the current view controller using the "addChild" method.


        controller.view.translatesAutoresizingMaskIntoConstraints = false
        //Setting it to false indicates that the developer will provide the necessary constraints.
        
        view.addSubview(controller.view)
        // make layout for bar chart
        
        NSLayoutConstraint.activate([
            
            //safeAreaLayoutGuide : ensure, UI elements are positioned within the visible area of the screen, regardless of the device or screen size.
            
            
            //positioned to the right of the left edge of the safeAreaLayoutGuide.leadingAnchor.
            controller.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            
            
            //view to be positioned  below the top edge of the
            controller.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            
            //view to be positioned - 100 points below the bottom edge of the
            controller.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            
            // for right side
            controller.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
           
        ])
        
        

        controller.didMove(toParent: self)
        
        
   
        
        
    }
    
    var shouldPerformSegue = false
    
    
    @IBAction func NextButton(_ sender: Any) {
        
        print("next")
        Anger.text = viewAnger
        Sadness.text = viewSad
        
        var barAnger: Double = 0.0
        var barSad: Double = 0.0
        
        barAnger = Double(viewAnger)!
        barSad = Double(viewSad)!
        
        
        if  barAnger >= 50{
            shouldPerformSegue = true
            self.performSegue(withIdentifier: "anger", sender: nil)
            
        }
        
        else if barSad >= 50 {
            shouldPerformSegue = false
            self.performSegue(withIdentifier: "sad", sender: nil)
            
        }
        
    }
        
        
        
        
    override func shouldPerformSegue(withIdentifier identifier: String?, sender: Any?) -> Bool {
            return shouldPerformSegue
        }
        
        
        
        
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            
            if segue.identifier == "anger" {
                
                let CompletedListViewController = segue.destination as! angerViewController
                
                
            }
            
            else if segue.identifier == "sad" {
                let CompletedListViewController = segue.destination as! sadViewController
            }
            
 
        }
        
        
        
        
        
    }
    
        
        

 
    
    

    
