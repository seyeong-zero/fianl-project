//
//  notingViewController.swift
//  Final Project
//
//  Created by seyeong on 16/04/2023.
//

import UIKit

class notingViewController: UIViewController {

    
    @IBOutlet var titleLabel : UILabel!
    @IBOutlet var noteLabel : UITextView!
    
    public var noteTitle: String = ""
    public var note: String = "" 
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = noteTitle
        noteLabel.text = note
        
        

        // Do any additional setup after loading the view.
    }
    

 

}
