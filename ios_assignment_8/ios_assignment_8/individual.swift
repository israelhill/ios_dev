//
//  individual.swift
//  ios_assignment_8
//
//  Created by Israel Hill on 4/4/17.
//  Copyright © 2017 Israel Hill. All rights reserved.
//
import Foundation

class Individual {
    
    private var id = 0
    private var firstName = ""
    private var lastname = ""
    private var gender = ""
    private var mother:Individual? = nil
    private var father:Individual? = nil
    private var diseaseStatus = false
    
    init(id:Int, firstName:String, lastName:String, gender:String, mother:Individual?,
         father:Individual?, diseaseStatus:Bool) {
        self.id = id
        self.firstName = firstName
        self.lastname = lastName
        self.gender = gender
        self.mother = mother
        self.father = father
        self.diseaseStatus = diseaseStatus
    }
    
    func setId(id:Int) {
        self.id = id
    }
    
    func getId() -> Int {
        return self.id
    }
    
    func setFirstName(name:String) {
        self.firstName = name
    }
    
    func getFirstName() -> String {
        return self.firstName
    }
    
    func setLastName(name:String) {
        self.lastname = name
    }
    
    func getLastName() -> String {
        return self.lastname
    }
    
    func setGender(gender:String) {
        self.gender = gender
    }
    
    func getGender() -> String {
        return self.gender
    }
    
    func setMother(mother:Individual?) {
        self.mother = mother
    }
    
    func getMother() -> Individual? {
        return self.mother
    }
    
    func setFather(father:Individual?) {
        self.father = father
    }
    
    func getFather() -> Individual? {
        return self.father
    }
    
    func setDiseaseStatus(status:Bool) {
        self.diseaseStatus = status
    }
    
    func getDiseaseStatus() -> Bool {
        return self.diseaseStatus
    }
    
    func fullName() -> String {
        return self.firstName + " " + self.lastname
    }
    
    func printParents() -> String {
        if self.mother != nil && self.father != nil {
            return "Parents: " + (self.mother?.fullName())! + " and " + (self.father?.fullName())!
        }
        else if self.mother != nil && self.father == nil {
            return "Parents: " + (self.mother?.fullName())!
        }
        else if self.mother == nil && self.father != nil {
            return "Parents: " + (self.father?.fullName())!
        }
        return ""
    }
    
    static func getIndividualForId(allMembers:[Individual], id:Int) -> Individual? {
        for person in allMembers {
            if person.getId() == id {
                return person
            }
        }
        return nil
    }
}
