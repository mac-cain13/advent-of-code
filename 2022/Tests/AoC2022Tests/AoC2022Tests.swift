import XCTest
@testable import AoC2022

final class AoC2022Tests: XCTestCase {
    
    // MARK: - Day 1
    
    func testDay1Combined() throws {
        test(day1(highestN: 3), dayNumber: 1, sampleResult: 45000, inputResult: 201524)
        test(day1(highestN: 1), dayNumber: 1, sampleResult: 24000, inputResult: 69281)
    }
    
    func testDay1Part2() throws {
        test(day1part2, dayNumber: 1, sampleResult: 45000, inputResult: 201524)
    }

    func testDay1Part1() throws {
        test(day1part1, dayNumber: 1, sampleResult: 24000, inputResult: 69281)
    }
}

func test<T: Equatable>(_ function: (String) -> T, dayNumber: Int, sampleResult: T, inputResult: T) {
    let samplePath = Bundle.module.path(forResource: "day\(dayNumber)", ofType: "sample", inDirectory: "Input")!
    XCTAssertEqual(function(samplePath), sampleResult)
    
    let inputPath = Bundle.module.path(forResource: "day\(dayNumber)", ofType: "input", inDirectory: "Input")!
    XCTAssertEqual(function(inputPath), inputResult)
}
