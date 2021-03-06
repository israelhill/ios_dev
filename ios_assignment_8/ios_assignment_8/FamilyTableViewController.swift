//
//  FamilyTableViewController.swift
//  ios_assignment_8
//
//  Created by Israel Hill on 4/5/17.
//  Copyright © 2017 Israel Hill. All rights reserved.
//

import UIKit

class FamilyTableViewController: UITableViewController {
    var allMembers = [Individual]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        // return the number of rows
        return (SharedDataSingleton.sharedInstance.currentPed?.getFamilyArray().count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "familyMemberCell", for: indexPath) as! MemberTableViewCell
        let row = indexPath.row
        let member = SharedDataSingleton.sharedInstance.currentPed?.getFamilyArray()[row]
        cell.textLabel?.text = member?.fullName()
        cell.detailTextLabel?.text = member?.printParents()
        cell.member = member
        cell.family = (SharedDataSingleton.sharedInstance.currentPed?.getFamilyArray())!
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
        if segue.identifier == "editMember" {
            let memberCell = sender as! MemberTableViewCell
            let editViewController = segue.destination as! EditAddViewController
            print("Name \(memberCell.member?.fullName())")
            editViewController.member = memberCell.member
            editViewController.mode = "edit"
        }
        if segue.identifier == "addMember" {
            let addViewController = segue.destination as! EditAddViewController
            addViewController.mode = "add"
        }
    }
 
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

}
