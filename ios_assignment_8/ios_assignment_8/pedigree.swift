//
//  pedigree.swift
//  ios_assignment_8
//
//  Created by Israel Hill on 4/4/17.
//  Copyright © 2017 Israel Hill. All rights reserved.
//

import Foundation

class Pedigree {
    
    private var family = [Individual]()
    private var proband:Individual? = nil
    
    func setProband(person:Individual) {
        self.proband = person
    }
    
    func getProBand() -> Individual {
        return self.proband!
    }
    
    func add(_ people:Individual...) {
        for person:Individual in people {
            self.family.append(person)
        }
    }
    
    func getFamilyArray() -> [Individual] {
        return self.family
    }
    
    func getMemberForId(_ id:Int) -> Individual? {
        for person in family {
            if person.getId() == id {
                return person
            }
        }
        return nil
    }
}
