//
//  BunsaMember.swift
//  Gob-VetTests
//
//  Created by Karim Ulises Salazar Garcia on 1/22/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import XCTest

@testable import BunsanMembers

class BunsanMembersTest: XCTestCase {
    


    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        func testCorrectLogin () {
            XCTAssertTrue(.members.login(userName: "ulises", password: ""))
    }

    func testPerformanceExample() {
        
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
}
