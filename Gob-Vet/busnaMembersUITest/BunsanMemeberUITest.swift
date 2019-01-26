//
//  BunsanMemeber.swift
//  Gob-VetTests
//
//  Created by Karim Ulises Salazar Garcia on 1/22/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import XCTest

class BunsanMemeber: XCTestCase {

    override func setUp() {
   

        continueAfterFailure = false

       
        XCUIApplication().launch()

    }

    override func tearDown() {
        
    }

    func testExample() {
       let app = XCUIApplication ()
        let nameTestField = app.textFields["userNameTextField"]
        nameTestField.tap()
        nameTestField.typeText("ulises")
        let passwordTestField = app.textFields["passwordTestField"]
        passwordTestField.tap()
        passwordTestField.typeText("i am star")
     
    
        
    }
    

}
