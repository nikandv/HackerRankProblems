//
//  Vowel-SubstringTest.swift
//  HackerRankTests
//
//  Created by Anton Nikandrov on 13.08.2020.
//

import XCTest

class Vowel_SubstringTest: XCTestCase {
    
    /// Result of `findSubstring` when the string does not contain vowels
    let notFound = "Not found!"
    
    /// Example Test Case 0 from HackerRank.
    /// Possible substrings: azerd (2), zerdi (2), erdii (3)
    /// Correct answer: erdii – the hightest number of vowels (3)
    func testVowelSubstirngCase0() {
        // arrange
        let string = "azerdii"
        let length = 5
        
        // act
        let result = findSubstring(s: string, k: String(length))
        
        //assert
        XCTAssertEqual(result, "erdii")
    }

    /// Example Test Case 1 from HackerRank.
    /// Possible sustrings: caber (2), aberq (2), berqi (2), erqii (3), rqiit (2), qiite (3), iitef (3), itefg (2).
    /// Correct answer: erqii – the highest number of vowels (3) with lowest index
    func testVowelSubstringCase1() {
        // arrange
        let string = "caberqiitefg"
        let length = 5
        
        // act
        let result = findSubstring(s: string, k: String(length))
        
        // assert
        XCTAssertEqual(result, "erqii")
    }
    
    /// Example Test Case 2 from HackerRank. All vowels.
    /// Possible substrings: eiua (4), iuao (4), uaoo (4), aooo (4).
    /// Correct answer: eiua (4) – the lowest index (the number of vowels does not matter since all characters are vowels)
    func testVowelSubstringCase2() {
        // arrange
        let string = "eiuaooo"
        let length = 4
        
        // act
        let result = findSubstring(s: string, k: String(length))
        
        // assert
        XCTAssertEqual(result, "eiua")
    }
    
    /// Test Case with no vowels in the given string.
    /// No possible substrings.
    /// Correct answer: "Not found!"
    func testVowelSubstringNoVowels() {
        // arrange
        let string = "strngwthnvwls"
        let length = 3
        
        // act
        let results = findSubstring(s: string, k: String(length))
        
        // assert
        XCTAssertEqual(results, notFound)
    }
    
    /// Possible substrings: asd (3), sde (3), deq (3), eqw (3), qwu (3), wuk (3), ukh (3)
    /// Correct answer: asd (3)
    func testVowelSubstringTooShort() {
        // arrange
        let string = "asdeqwukh"
        let length = 3
        
        // act
        let results = findSubstring(s: string, k: String(length))
        
        // assert
        XCTAssertEqual(results, "asd")
    }
    
    /// Test case where substring has a length equal to 1. Should return first vowel.
    /// Possible substrings: q (0), w (0), e (1), r (0), t (0), y (1)
    /// Correct answer: e (1)
    func testVowelSubstringLengthOne() {
        // arrange
        let string = "qwerty"
        let length = 1
        
        // act
        let result = findSubstring(s: string, k: String(length))
        
        // assert
        XCTAssertEqual(result, "e")
    }
}
