//
//  checkListResultViewController.swift
//  Final Project
//
//  Created by seyeong on 18/04/2023.
//

import UIKit
import SwiftUI



class checkListResultViewController: UIViewController {
   
    
    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var shouldDoListNumber: UILabel!
    

    var Results = 0
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      //  Result.text = "Checked : \(String(Results))"
        Result.text = String(Results)

    }
    
    
    

    
   
}
