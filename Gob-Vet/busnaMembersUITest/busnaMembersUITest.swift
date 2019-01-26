//
//  busnaMembersUITest.swift
//  Gob-Vet
//
//  Created by Karim Ulises Salazar Garcia on 1/21/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import XCTest
class busnaMembersUITest: XCTestCase {
    
    override func setUp () {
        
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    
        continueAfterFailure = false
        XCUIApplication().launch()

        
    }
    override func tearDown() {
        
         // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        
    }
    
    func testLoginExample () {
        let app = XCApplication ()
         let nameTextField = app.textFields["userNameTextField"]
        nameTextField.tap()
        nameTextField.typeText("ulises")
        
    let passwordTextField = app.textFields["passwordtextfield"]
        passwordTextField.tap()
passwordTextField.typeText[" i am star"]
        
        
        let logginButton = app.buttons["loginButtons"]
        logginButton.tap()
        XCTAssertTrue(app.isDisplayingMemberList)
        
    }
    
}
extension XCUIAplication {

    var isDisplayingMemberList: Bool {
        return otherElements["MemberListView"].exists
}
}
