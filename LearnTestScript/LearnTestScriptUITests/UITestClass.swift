//
//  UITestClass.swift
//  LearnTestScriptUITests
//
//  Created by Firoj Shaikh on 13/03/18.
//  Copyright © 2018 Firoj Shaikh. All rights reserved.
//

import XCTest

class UITestClass: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUserNameValidity(){
        
        let app = XCUIApplication()
        let typeSomethingTextField = app.textFields["type Something"]
        typeSomethingTextField.tap()
        typeSomethingTextField.typeText("Firoj")
        
        let checkValidOrNotButton = app.buttons["Check valid or not"]
        checkValidOrNotButton.tap()
        typeSomethingTextField.typeText("1")
        checkValidOrNotButton.tap()
        
    }
    
}
