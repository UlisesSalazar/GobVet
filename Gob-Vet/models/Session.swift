//
//  Session.swift
//  Gob-Vet
//
//  Created by Karim Ulises Salazar Garcia on 1/21/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import UIKit
class Session: NSObject {
    var token: String?
    static let sharedInstance = Session()
    
    override private init() {
        super.init()
    }
    
    func saveSession(){
        
token = "1234567890"

    }
}
