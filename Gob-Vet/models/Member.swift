//
//  Member.swift
//  Gob-Vet
//
//  Created by Karim Ulises Salazar Garcia on 1/21/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import UIKit

class Member: NSObject {
    static let userName = "ulises"
    static let password = "i am star"
    static let session = Session.sharedInstance
    
    
    static func login (userName: String, password: String) -> Bool {
        if self.userName == userName {
            
          session.saveSession()
        
            return true
        
        }
    
        return false
    
    }
    
}
