//
//  viewLogin.swift
//  Gob-Vet
//
//  Created by Karim Ulises Salazar Garcia on 1/21/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import XCTests
@testable import bunsanMembers

class bunsanMemberTest: XCTestCase {
    
    
    override func setUp () {
    
    }
    
    override func tearDown () {
        
        
        
    }
    func testCorretLogin () {
        XCTAssertTrue (Member.login(userName: "ulises", password: ""))
        
    }
    func testPerformanceExample() {
        self.measure {
            
        }
    }
    
    
}

