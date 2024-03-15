//
//  ViewController.swift
//  Assignment3
//
//  Created by  on 3/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSavedData()
        // Do any additional setup after loading the view.
    }
    @IBAction func saveClicked(_ sender: Any) {
        
        guard let name = nameTextField.text, !name.isEmpty,
                      let birthday = birthdayTextField.text, !birthday.isEmpty
        else { return }
                
        
                UserDefaults.standard.set(name, forKey: "Name")
                UserDefaults.standard.set(birthday, forKey: "Birthday")
                
                nameLabel.text = name
                birthdayLabel.text = birthday
            }
    
    @IBAction func deleteClicked(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "Name")
        UserDefaults.standard.removeObject(forKey: "Birthday")
        
        nameLabel.text = "Name"
        birthdayLabel.text = "Birthday"    }
    
    
    func loadSavedData(){
        
        if let name = UserDefaults.standard.string(forKey: "Name"), let birthday = UserDefaults.standard.string(forKey: "Birthday")
            
        {
            nameLabel.text = name
            birthdayLabel.text = birthday
        }
    }
}

