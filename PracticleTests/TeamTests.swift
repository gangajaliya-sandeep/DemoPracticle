//
//  TeamTests.swift
//  PracticleTests
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import XCTest
@testable import Practicle

class TeamTests: XCTestCase {
    
    var india: Team!
    var pakistan: Team!
    
    override func setUp() {
       super.setUp()
        india = Team(id: 1, team_name: "India", players: [Player(id: 1, player_name: "Rohit Sharma")])
        pakistan = Team(id: 2, team_name: "Pakistan", players: [Player(id: 12, player_name: "Babar Azam")])
    }
    
    override func tearDown() {
        super.tearDown()
        
        india = nil
        pakistan = nil
    }
    
    func testIndiaFasterThanPakistan() {
       XCTAssertTrue(india.id < pakistan.id)
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
