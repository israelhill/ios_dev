//
//  EditAddViewController.swift
//  ios_assignment_8
//
//  Created by Israel Hill on 4/5/17.
//  Copyright © 2017 Israel Hill. All rights reserved.
//

import UIKit

class EditAddViewController: UIViewController {

    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var genderField: UITextField!
    @IBOutlet weak var motherField: UITextField!
    @IBOutlet weak var fatherField: UITextField!
    @IBOutlet weak var diseaseSwitch: UISwitch!
    
    var mode:String? = nil
    var member:Individual? = nil
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if mode == "edit" && member != nil {
            idField.text = String(describing: member!.getId())
            firstNameField.text = member!.getFirstName()
            lastNameField.text = member!.getLastName()
            genderField.text = member!.getGender()
            if member?.getMother() != nil {
                motherField.text = String(describing: member!.getMother()!.getId())
            }
            if member?.getFather() != nil {
                fatherField.text = String(describing: member!.getFather()!.getId())
            }
            if member?.getDiseaseStatus() == true {
                diseaseSwitch.isOn = true
            }
            else {
                diseaseSwitch.isOn = false
            }
            
        }
        else if mode == "add" && member != nil {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated : Bool) {
        super.viewWillDisappear(animated)
        
        if (self.isMovingFromParentViewController){
            // Your code...
        }
    }
    
    @IBAction func cancelButtonClicked(_ sender: UIBarButtonItem) {
        self.navigationController!.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
