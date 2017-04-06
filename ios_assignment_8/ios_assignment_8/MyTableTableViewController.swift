//
//  MyTableTableViewController.swift
//  ios_assignment_8
//
//  Created by Israel Hill on 4/5/17.
//  Copyright © 2017 Israel Hill. All rights reserved.
//

import UIKit

class MyTableTableViewController: UITableViewController {
    var pedigrees = [Pedigree]()
    var allMembers = [Individual]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ped1 = Pedigree()
        let ped2 = Pedigree()
        let ped3 = Pedigree()
        
        // ******************  FAMILY 1   **********************************
        let marry = Individual(id:1, firstName:"Marry", lastName:"Smith", gender:"female", mother:nil, father:nil, diseaseStatus:false)
        let bob = Individual(id:2, firstName:"Bob", lastName:"Smith", gender:"male", mother:nil, father:nil, diseaseStatus:false)
        let jill = Individual(id:3, firstName:"Jill", lastName:"Smith", gender:"female", mother:marry, father:bob, diseaseStatus:false)
        let tom = Individual(id:4, firstName: "Tom", lastName: "Smith", gender: "male", mother: marry, father: bob, diseaseStatus: false)
        let sally = Individual(id:5, firstName: "Sally", lastName: "Smith", gender: "female", mother: marry, father: bob, diseaseStatus: false)
        
        
        // ****************    FAMILY 2   **********************************
        let joe = Individual(id: 6, firstName: "Joe", lastName: "Green", gender: "male", mother: nil, father: nil, diseaseStatus: false)
        let amy = Individual(id: 7, firstName: "Amy", lastName: "Green", gender: "female", mother: nil, father: nil, diseaseStatus: false)
        let sarah = Individual(id: 8, firstName: "Sarah", lastName: "Brown", gender: "female", mother: nil, father: nil, diseaseStatus: false)
        let john = Individual(id: 9, firstName: "John", lastName: "Brown", gender: "male", mother: nil, father: nil, diseaseStatus: false)
        let ann = Individual(id: 10, firstName: "Amy", lastName: "Brown", gender: "female", mother: amy, father: joe, diseaseStatus: false)
        let mike = Individual(id: 11, firstName: "Mike", lastName: "Brown", gender: "male", mother: sarah, father: john, diseaseStatus: false)
        let june = Individual(id: 12, firstName: "June", lastName: "Brown", gender: "femalse", mother: ann, father: mike, diseaseStatus: false)
        let dean = Individual(id: 13, firstName: "Dean", lastName: "Brown", gender: "male", mother: ann, father: mike, diseaseStatus: false)
        
        // ****************    FAMILY 3   ***********************************
        let ned = Individual(id: 14, firstName: "Ned", lastName: "White", gender: "male", mother: nil, father: nil, diseaseStatus: false)
        let judy = Individual(id: 15, firstName: "Judy", lastName: "White", gender: "female", mother: nil, father: nil, diseaseStatus: false)
        let oscar = Individual(id: 16, firstName: "Oscar", lastName: "Robinson", gender: "male", mother: nil, father: nil, diseaseStatus: false)
        let emily = Individual(id: 17, firstName: "Emily", lastName: "Robinson", gender: "female", mother: judy, father: ned, diseaseStatus: false)
        let kevin = Individual(id: 18, firstName: "Kevin", lastName: "White", gender: "male", mother: judy, father: ned, diseaseStatus: false)
        let isabella = Individual(id: 19, firstName: "Isabella", lastName: "White", gender: "female", mother: nil, father: nil, diseaseStatus: false)
        let ashley = Individual(id: 20, firstName: "Ashley", lastName: "White", gender: "female", mother: emily, father: oscar, diseaseStatus: false)
        let billy = Individual(id: 21, firstName: "Billy", lastName: "White", gender: "male", mother: isabella, father: kevin, diseaseStatus: false)
        let sophia = Individual(id: 22, firstName: "Sophia", lastName: "White", gender: "female", mother: ashley, father: billy, diseaseStatus: false)
        let emma = Individual(id: 23, firstName: "Emma", lastName: "White", gender: "female", mother: ashley, father: billy, diseaseStatus: false)
        
        ped1.add(marry, bob, jill, tom, sally)
        ped2.add(joe, amy, sarah, john, ann, mike, june, dean)
        ped3.add(ned, judy, oscar, emily, kevin, isabella, ashley, billy, sophia, emma)
        ped1.setProband(person: marry)
        ped2.setProband(person: joe)
        ped3.setProband(person: ned)
        pedigrees = [ped1, ped2, ped3]
        
        allMembers = [marry, bob, jill, tom, sally, joe, amy, sarah, john, ann, mike, june, dean, ned,
                                       judy, oscar, emily, kevin, isabella, ashley, billy, sophia, emma]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PedigreeCell", for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = pedigrees[row].getProBand().getLastName()

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showFamily" {
            let familyTableViewController = segue.destination as! FamilyTableViewController
            let currentIndexPath = self.tableView.indexPathForSelectedRow!
            let row = currentIndexPath.row
            SharedDataSingleton.sharedInstance.family = pedigrees[row].getFamilyArray()
            familyTableViewController.allMembers = self.allMembers
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
 

}
