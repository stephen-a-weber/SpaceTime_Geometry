//
//  HexagonSystemImageTests.swift
//  HexagonSystemImageTests
//
//  Created by stephen weber on 5/7/22.
//

import XCTest
@testable import HexagonSystemImage

class HexagonSystemImageTests: XCTestCase {
    var puts : Put!
    override func setUpWithError() throws {
        
        puts = Put()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testSpacementCreation() {
        var theOrigin = Position(x: 0 , y: 0)
        XCTAssertEqual(puts.getOrigin() ,theOrigin )
        // default values for private origin
        
         theOrigin = Position(x:100,y:150)
        puts.setOrigin(x:100,y:150)
        XCTAssertEqual(puts.getOrigin(),theOrigin)
        //able to set and get a new origin
        
        var theScale = 1.0
        XCTAssertEqual(puts.getScale(),theScale)
        // default scale
        theScale = 2.6
        puts.setScale(at: 2.6)
        XCTAssertEqual(puts.getScale(), theScale)
        // able to set and get a new scale
        
    }

}
