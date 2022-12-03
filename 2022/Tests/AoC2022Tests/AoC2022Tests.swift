import XCTest
@testable import AoC2022

final class AoC2022Tests: XCTestCase {
    
    // MARK: - Day 3
    
    func testDay3Part2() throws {
        test(day3part2, dayNumber: 3, sampleResult: 70, inputResult: 2581)
    }
    
    func testDay3Part1() throws {
        test(day3part1, dayNumber: 3, sampleResult: 157, inputResult: 7850)
    }
    
    // MARK: - Day 2
    
    func testDay2Part2() throws {
        test(day2part2, dayNumber: 2, sampleResult: 12, inputResult: 10560)
    }
    
    func testDay2Part1() throws {
        test(day2part1, dayNumber: 2, sampleResult: 15, inputResult: 9651)
    }
    
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

func test<T: Equatable>(_ function: (String) -> T, dayNumber: Int, sampleResult: T, inputResult: T?) {
    let samplePath = Bundle.module.path(forResource: "day\(dayNumber)", ofType: "sample", inDirectory: "Input")!
    XCTAssertEqual(function(samplePath), sampleResult)
    
    let inputPath = Bundle.module.path(forResource: "day\(dayNumber)", ofType: "input", inDirectory: "Input")!
    let answer = function(inputPath)
    if (inputResult == nil) {
        print("The answer is ==>", answer)
    } else {
        XCTAssertEqual(answer, inputResult)
    }
}
