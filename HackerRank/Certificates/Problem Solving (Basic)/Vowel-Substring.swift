// Given a string of lowercase English letters and an integer of the substring length, determine the substring of that length
// that contains the most vowels. Vowels are in the set {a, e, i, o, u}. If there is more than one substring with the maximum
// number of vowels, return the one that starts at the lowest index. If there are no vowels in the input string, return the
// string 'Not found!' without the quotes.
// From: HackerRank Problem Solving (Basic) Skills Certification Test

import Foundation


/// Finds the substring of a given `String` with the maximum number of vowels with the given length
/// - Parameters:
///   - s: a given string
///   - k: substring length
/// - Returns: the substring with the maximum number of vowels
func findSubstring(s: String, k: String) -> String {
    /// A set of vowels in English alphabet. Enables O(1) `contains` complexity
    let vowelSet: Set<String.Element> = ["a", "e", "i", "o", "u"]
    /// The  length of the resulting substring, converted from given `String` into `Int`
    let substringLength = Int(k)!
    /// The array of indices at each a given `String` contains vowels
    var vowelIndices = [Int]()
    /// A given `String` converted intro `Array` for convenience
    let arrayS = Array(s)
    
    // Get indices of vowels in a given string
    for i in 0..<s.count {
        if vowelSet.contains(arrayS[i]) {
            vowelIndices.append(i)
        }
    }
    
    // If empty, then there are no vowels
    if vowelIndices.isEmpty {
        return "Not found!"
    }
    
    var maxCount = 0
    var maxRange: ClosedRange<Int> = 0...0
    
    // Iterate over indices of vowels to find the highest number of vowels within the substring length from each other
    for i in 0..<vowelIndices.count {
        /// A local count to compare with `maxCount`
        var count = 0
        /// The vowel index at the end of a current substring
        var result = vowelIndices[i]
        /// This is the index of the end of the substring
        let end = result + substringLength - 1
        
        // Iterate over the indices after the current index
        for j in i..<vowelIndices.count {
            let index = vowelIndices[j]
            if index <= end {
                count += 1
                result = index
                // There might be way more vowels than we need, break from the cycle not to waste time
                if index == end { break }
            }
        }
        
        if count > maxCount {
            maxCount = count
            // We need to have the lowest index possible, for that reason we find such substring that ends with last vowel of current substring
            let actualStart = max(result - substringLength + 1, 0)
            // Finally, make a range starting with lowest index possible with given substring length
            maxRange = actualStart...actualStart+substringLength-1
        }
    }
    return String(arrayS[maxRange])
}
