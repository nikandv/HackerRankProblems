// A number of points along the highway are in need of repair. An equal number of crews are available, stationed at various points
// along the highway. They must move along the highway to reach an assigned point. Given that one crew must be assigned to each job,
// what is the minimum total amount of distance traveled by all crews before they can begin work?
// For example, given crews at points {1, 3, 5} and required repairs at {3, 5, 7}, one possible minimum assignment would be
// {1 ➡️ 3, 3 ➡️ 5, 5 ➡️ 7} for a total of 6 units traveled.

import Foundation

/// Gives the minimum total amount of distance traveled by repair crews
/// - Parameters:
///   - crew_id: an array of points along the highway where repair crews are located
///   - job_id: an array of points along the highway where the road needs to be repaired
/// - Returns: the minimum total amount of distance traveled by all crews
func getMinCost(crew_id: [Int], job_id: [Int]) -> Int {
    // Sort given arrays. NOTE: The task didn't explicitly prohibit using built-in `sort` functions. If it did, the sort should be manual, probably quicksort or radix sort.
    let crew = crew_id.sorted()
    let job = job_id.sorted()
    
    var results = [Int]()
    for i in 0..<crew.count {
        results.append(abs(crew[i] - job[i]))
    }
    return results.reduce(0, +)
}
