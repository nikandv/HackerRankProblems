//
//  Road-RepairTests.swift
//  HackerRankTests
//
//  Created by Anton Nikandrov on 13.08.2020.
//

import XCTest

class Road_RepairTests: XCTestCase {

    /// Test Case Example from HackerRank.
    /// Crews: {1, 3, 5}
    /// Road: {3, 5, 7}
    /// Solution: {1 ➡️ 3, 3 ➡️ 5, 5 ➡️ 7} for total of 6
    func testGetMinCostExample() {
        // arrange
        let crews = [1, 3, 5]
        let road = [3, 5, 7]
        
        // act
        let result = getMinCost(crew_id: crews, job_id: road)
        
        // assert
        XCTAssertEqual(result, 6)
    }
    
    /// Crews: {3}
    /// Road: {3}
    /// Solution: {3 ➡️ 3} for total of 0
    func testGetMinCostOneCrewOneRoad() {
        // arrange
        let crews = [3]
        let road = [3]
        
        // act
        let result = getMinCost(crew_id: crews, job_id: road)
        
        // assert
        XCTAssertEqual(result, 0)
    }
    
    /// Test Case Example from HackerRank.
    /// Crews: {101, 202, 303}
    /// Road: {1, 2, 3}
    /// Solution: {101 ➡️ 1, 202 ➡️ 2, 303 ➡️ 3} for total of 600
    func testGetMinCostCase1() {
        // arrange
        let crews = [301, 102, 203]
        let road = [1, 2, 3]
        
        // act
        let result = getMinCost(crew_id: crews, job_id: road)
        
        // assert
        XCTAssertEqual(result, 600)
    }

}
