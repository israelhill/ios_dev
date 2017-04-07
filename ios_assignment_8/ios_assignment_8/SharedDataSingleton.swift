//
//  SharedDataSingleton.swift
//  ios_assignment_8
//
//  Created by Israel Hill on 4/6/17.
//  Copyright © 2017 Israel Hill. All rights reserved.
//

import Foundation

class SharedDataSingleton {
    var currentPed:Pedigree? = nil
    var family:[Individual] = []
    var pedigrees:[Pedigree] = []
    var allMembers:[Individual] = []
    static let sharedInstance = SharedDataSingleton()
}
