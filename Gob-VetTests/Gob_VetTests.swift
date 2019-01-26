//
//  Gob_VetTests.swift
//  Gob-VetTests
//
//  Created by Karim Ulises Salazar Garcia on 1/9/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import XCTest
@testable import Gob_Vet

class Gob_VetTests: XCTestCase {

    override func setUp() {
      
    }

    override func tearDown() {
            }

    func testExample() {
        
    }

    func testCorrectLogin () {
        XCTAssertTrue(Member.login(userName: "ulises", password: ""))
    
    
    func testPerformanceExample() {
        
        self.measure {
            
        }
    }
    }
    
}

