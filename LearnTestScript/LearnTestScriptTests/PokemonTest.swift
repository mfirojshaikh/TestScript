//
//  PokemonTest.swift
//  LearnTestScriptTests
//
//  Created by Firoj Shaikh on 12/03/18.
//  Copyright © 2018 Firoj Shaikh. All rights reserved.
//

import XCTest
@testable import LearnTestScript

class PokemonTest: XCTestCase {
    
    var objPokemon: Pokemon!
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objPokemon = Pokemon(type: .Fire, attackType: .Water)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        objPokemon = nil
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
    
    func testAttack()
    {
        let health = objPokemon.health
        objPokemon.attack(enemy: objPokemon)
        XCTAssertTrue(objPokemon.health < health)
    }
    
}
