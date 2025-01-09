//
//  noteViewController.swift
//  Final Project
//
//  Created by seyeong on 16/04/2023.
//

import Foundation
import UIKit
import CoreData

class noteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    @IBOutlet var lable: UILabel!
    

    var models : [(title: String, note: String)] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        title = "Daily Note"
    }
    
    
    
    @IBAction func didTapNewNote(){
        guard let nextViewController = storyboard?.instantiateViewController(identifier: "new") as? EntryViewController else {
            return
        }
        nextViewController.title = "new"
        nextViewController.navigationItem.largeTitleDisplayMode = .never
        nextViewController.completion = { noteTitle, note in
            self.navigationController?.popToRootViewController(animated: true)
            self.models.append((title: noteTitle, note: note))
            self.lable.isHidden = true
            self.table.isHidden = false
            self.table.reloadData()
        }
        navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        cell.detailTextLabel?.text = models[indexPath.row].note
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        _ = models[indexPath.row]
        
        
        
        
    guard let nextViewController = storyboard?.instantiateViewController(identifier: "note") as? noteViewController else { return}
   
        nextViewController.navigationItem.largeTitleDisplayMode = .never
        nextViewController.title = "Note"
        navigationController?.pushViewController(nextViewController, animated: true)
       // vc.noteTitle = model.title
       // vc.note = model.note
        
    }
    
}
