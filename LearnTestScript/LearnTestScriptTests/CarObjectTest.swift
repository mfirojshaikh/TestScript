//
//  CarObjectTest.swift
//  LearnTestScriptTests
//
//  Created by Firoj Shaikh on 11/03/18.
//  Copyright © 2018 Firoj Shaikh. All rights reserved.
//  added new document comment 

import XCTest
@testable import LearnTestScript

class CarObjectTest: XCTestCase {
    var ferrari: Car!
    var jeep: Car!
    var honda: Car!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        ferrari = nil
        jeep = nil
        honda = nil
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSportFasterThanJeep() {
        let minutes = 60
        // start Ferrari - 70
        ferrari.start(minutes: minutes)
        // start Jeep - 50
        jeep.start(minutes: minutes)
        print("\(ferrari.miles) and \(jeep.miles)")
        // Test It
        XCTAssertTrue(ferrari.miles > jeep.miles)
        
    }
    
    func testAdditionMethod(){
        let valueOne = 5
        let valueTwo = 10
        let expectedValue = 15
        XCTAssertEqual(ferrari.makeAddition(a: valueOne, b: valueTwo), expectedValue)
    }
    
    
    
}
