import XCTest
@testable import AoC2022

final class AoC2022Tests: XCTestCase {
    
    // MARK: - Day 25
    
    func testDay25part2() throws {
        throw XCTSkip()
        test(day25part2, dayNumber: 25, sampleResult: -1, inputResult: nil)
    }
    
    func testDay25part1() throws {
        throw XCTSkip()
        test(day25part1, dayNumber: 25, sampleResult: -1, inputResult: nil)
    }
    
    // MARK: - Day 24
    
    func testDay24part2() throws {
        throw XCTSkip()
        test(day24part2, dayNumber: 24, sampleResult: -1, inputResult: nil)
    }
    
    func testDay24part1() throws {
        throw XCTSkip()
        test(day24part1, dayNumber: 24, sampleResult: -1, inputResult: nil)
    }
    
    // MARK: - Day 23
    
    func testDay23part2() throws {
        throw XCTSkip()
        test(day23part2, dayNumber: 23, sampleResult: -1, inputResult: nil)
    }
    
    func testDay23part1() throws {
        throw XCTSkip()
        test(day23part1, dayNumber: 23, sampleResult: -1, inputResult: nil)
    }
    
    // MARK: - Day 22
    
    func testDay22part2() throws {
        throw XCTSkip()
        test(day22part2, dayNumber: 22, sampleResult: -1, inputResult: nil)
    }
    
    func testDay22part1() throws {
        throw XCTSkip()
        test(day22part1, dayNumber: 22, sampleResult: -1, inputResult: nil)
    }
    
    // MARK: - Day 21
    
    func testDay21part2() throws {
        throw XCTSkip()
        test(day21part2, dayNumber: 21, sampleResult: -1, inputResult: nil)
    }
    
    func testDay21part1() throws {
        throw XCTSkip()
        test(day21part1, dayNumber: 21, sampleResult: -1, inputResult: nil)
    }
    
    // MARK: - Day 20
    
    func testDay20part2() throws {
        throw XCTSkip()
        test(day20part2, dayNumber: 20, sampleResult: -1, inputResult: nil)
    }
    
    func testDay20part1() throws {
        throw XCTSkip()
        test(day20part1, dayNumber: 20, sampleResult: -1, inputResult: nil)
    }
    
    // MARK: - Day 19
    
    func testDay19part2() throws {
        throw XCTSkip()
        test(day19part2, dayNumber: 19, sampleResult: -1, inputResult: nil)
    }
    
    func testDay19part1() throws {
        throw XCTSkip()
        test(day19part1, dayNumber: 19, sampleResult: -1, inputResult: nil)
    }
    
    // MARK: - Day 18
    
    func testDay18part2() throws {
        throw XCTSkip()
        test(day18part2, dayNumber: 18, sampleResult: -1, inputResult: nil)
    }
    
    func testDay18part1() throws {
        throw XCTSkip()
        test(day18part1, dayNumber: 18, sampleResult: -1, inputResult: nil)
    }
    
    // MARK: - Day 17
    
    func testDay17part2() throws {
        throw XCTSkip()
        test(day17part2, dayNumber: 17, sampleResult: -1, inputResult: nil)
    }
    
    func testDay17part1() throws {
        throw XCTSkip()
        test(day17part1, dayNumber: 17, sampleResult: -1, inputResult: nil)
    }
    
    // MARK: - Day 16
    
    func testDay16part2() throws {
        throw XCTSkip()
        test(day16part2, dayNumber: 16 , sampleResult: -1, inputResult: nil)
    }
    
    func testDay16part1() throws {
        throw XCTSkip()
        test(day16part1, dayNumber: 16, sampleResult: -1, inputResult: nil)
    }
    
    // MARK: - Day 15
    
    func testDay15part2() throws {
        test(day15part2, dayNumber: 15, sampleResult: 56000011, inputResult: nil)
    }

    func testDay15part1() throws {
        test(day15part1, dayNumber: 15, sampleResult: 26, inputResult: 4827924)
    }
    
    // MARK: - Day 14
    
    func testDay14part2() throws {
        test(day14part2, dayNumber: 14, sampleResult: 93, inputResult: 22646)
    }

    func testDay14part1() throws {
        test(day14part1, dayNumber: 14, sampleResult: 24, inputResult: 1513)
    }
    
    // MARK: - Day 13
    
    func testDay13part2() throws {
        test(day13part2, dayNumber: 13, sampleResult: 140, inputResult: 22344)
    }

    func testDay13part1() throws {
        test(day13part1, dayNumber: 13, sampleResult: 13, inputResult: 5198)
    }
    
    // MARK: - Day 12
    
    func testDay12part2() throws {
        test(day12(startCharacters: ["S", "a"]), dayNumber: 12, sampleResult: 29, inputResult: 451)
    }

    func testDay12part1() throws {
        test(day12(startCharacters: ["S"]), dayNumber: 12, sampleResult: 31, inputResult: 462)
    }
    
    // MARK: - Day 11
    
    func testDay11part2() throws {
        test(day11(rounds: 10000, worryLevelDivider: 1), dayNumber: 11, sampleResult: 2713310158, inputResult: 19754471646)
    }

    func testDay11part1() throws {
        test(day11(rounds: 20, worryLevelDivider: 3), dayNumber: 11, sampleResult: 10605, inputResult: 101436)
    }
    
    // MARK: - Day 10

    func testDay10part1() throws {
        test(day10, dayNumber: 10, sampleResult: 13140, inputResult: 14520)
    }
    
    // MARK: - Day 9
    
    func testDay9Part2() throws {
        test(day9(ropeLength: 10), dayNumber: 9, sampleResult: 1, inputResult: 2386)
    }

    func testDay9Part1() throws {
        test(day9(ropeLength: 2), dayNumber: 9, sampleResult: 13, inputResult: 6181)
    }
    
    // MARK: - Day 8
    
    func testDay8Part2() throws {
        test(day8part2, dayNumber: 8, sampleResult: 8, inputResult: 211680)
    }

    func testDay8Part1() throws {
        test(day8part1, dayNumber: 8, sampleResult: 21, inputResult: 1823)
    }
    
    // MARK: - Day 7
    
    func testDay7Part2() throws {
        test(day7part2, dayNumber: 7, sampleResult: 24933642, inputResult: 578710)
    }

    func testDay7Part1() throws {
        test(day7part1, dayNumber: 7, sampleResult: 95437, inputResult: 1447046)
    }
    
    // MARK: - Day 6
    
    func testDay6Part2() throws {
        test(day6(uniqueCharactersNeeded: 14), dayNumber: 6, sampleResult: 19, inputResult: 3051)
    }
    
    func testDay6Part1() throws {
        test(day6(uniqueCharactersNeeded: 4), dayNumber: 6, sampleResult: 7, inputResult: 1235)
    }
    
    // MARK: - Day 5
    
    func testDay5Part2() throws {
        test(day5(crane: crateMover9001), dayNumber: 5, sampleResult: "MCD", inputResult: "STHGRZZFR")
    }
    
    func testDay5Part1() throws {
        test(day5(crane: crateMover9000), dayNumber: 5, sampleResult: "CMZ", inputResult: "RTGWZTHLD")
    }
    
    // MARK: - Day 4
    
    func testDay4Part2() throws {
        test(day4part2, dayNumber: 4, sampleResult: 4, inputResult: 891)
    }
    
    func testDay4Part1() throws {
        test(day4part1, dayNumber: 4, sampleResult: 2, inputResult: 602)
    }
    
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
