//
//  CompletedListViewController.swift
//  Final Project
//
//  Created by seyeong on 18/04/2023.
//

import UIKit

class CompletedListViewController: UIViewController {

    var data: String?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            if let data = data {
                print(data)
            }
        }


}
