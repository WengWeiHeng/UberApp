//
//  UserX.swift
//  UberApp
//
//  Created by Heng on 2020/4/7.
//  Copyright © 2020 Heng. All rights reserved.
//

import Foundation
import CoreLocation

enum AccountType: Int{
    case passenger
    case driver
}

struct User {
    let fullname: String
    let email: String
    var accountType: AccountType!
    var location: CLLocation?
    var uid: String
    var homeLocation: String?
    var workLocation: String?
    
    var firstInitial: String { return String(fullname.prefix(1)) }
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        
        if let home = dictionary["homeLocation"] as? String{
            self.homeLocation = home
        }
        
        if let work = dictionary["workLocation"] as? String{
            self.workLocation = work
        }
        
        if let index = dictionary["accountType"] as? Int{
            self.accountType = AccountType(rawValue: index)
        }
    }
}
