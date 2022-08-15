//
//  QuarkGridTests.swift
//  QuarkGridTests
//
//  Created by stephen weber on 6/13/22.
//

import XCTest
@testable import QuarkGrid

class QuarkGridTests: XCTestCase {
    var auto : automatic!
   // var out : Outline!
    var place : placement!
    override func setUpWithError() throws {
        auto = automatic(scale:10,direction:[2,3,4])
        place = placement(x: 0,y:0,radius: 20)
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
    func testdetailsAutomatic() {
        for i in auto.ringPivotsX {
            print(i)
        }
        for i in auto.ringPivotsY {
            print(i)
        }
        print("locations")
        for i in auto.location {
            print(i[0],",",i[1])
        }
        print(" here")
        print(place.Ax)
        print(place.Ay)
        print(place.Bx)
        print(place.By)
        print(place.Cx)
        print(place.Cy)
        }
  

}
