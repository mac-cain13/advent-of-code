// Clearly started off on the wrong approach, started hacking immutable stuff in between and prints etc just to get the answer.
// Ugliest code for a puzzle so far. :-)

import Accelerate

let rowWidth = 10
let input: [Double] = [
    6,1,1,1,8,2,1,7,6,7,
    1,7,6,3,6,1,1,6,1,5,
    3,5,1,2,6,8,3,1,3,1,
    8,5,8,2,7,7,1,4,7,3,
    8,2,1,4,8,1,3,8,7,4,
    2,3,2,5,8,2,3,2,1,7,
    2,2,2,2,4,8,2,8,2,3,
    5,4,7,1,3,5,6,7,8,2,
    3,7,3,8,6,7,1,2,8,7,
    8,6,7,5,2,2,6,5,7,4,
]

//let input: [Double] = [
//    5,4,8,3,1,4,3,2,2,3,
//    2,7,4,5,8,5,4,7,1,1,
//    5,2,6,4,5,5,6,1,7,3,
//    6,1,4,1,3,3,6,1,4,6,
//    6,3,5,7,3,8,5,4,7,8,
//    4,1,6,7,5,2,4,6,4,5,
//    2,1,7,6,8,4,1,7,2,1,
//    6,8,8,2,8,8,1,1,3,4,
//    4,8,4,6,8,4,8,5,5,4,
//    5,2,8,3,7,5,1,5,2,6,
//]

func neighbours(of position: Int) -> [Int] {
    [
        position % rowWidth == 0 ? -1 : position - 1, // left
        position % rowWidth == rowWidth - 1 ? -1 : position + 1, // right
        position + rowWidth, // down
        position - rowWidth, // up
        position % rowWidth == 0 ? -1 : position + rowWidth - 1, // down left
        position % rowWidth == rowWidth - 1 ? -1 : position + rowWidth + 1, // down right
        position % rowWidth == 0 ? -1 : position - rowWidth - 1, // up left
        position % rowWidth == rowWidth - 1 ? -1 : position - rowWidth + 1  // up right
    ].filter { neighbour in
        neighbour >= 0 && neighbour < input.count
    }
}

var totalExplosion = 0
func handleExplosions(in state: [Double], alreadyExplodedCells: Set<Int> = []) -> [Double] {
    let explodingCells = state
        .enumerated()
        .compactMap { (index, value) in
            value > 9 ? index : nil
        }
    let newlyExplodedCells = Set(explodingCells).subtracting(alreadyExplodedCells)
    totalExplosion += newlyExplodedCells.count
    
    if newlyExplodedCells.count == 0 {
        print("Flash count: \(alreadyExplodedCells.count)")
        if alreadyExplodedCells.count == 100 {
            print("==> ALL FLASHED! <==")
        }
        
        // No explosions
        return state
    }
    
    let indicesHitByExplosion = newlyExplodedCells
        .flatMap(neighbours)
        .reduce(into: [:]) { result, neighbour in
            result[neighbour, default: 0] += 1.0
        }

    let updatedState = state
        .enumerated()
        .map { (index, value) in
            value + indicesHitByExplosion[index, default: 0]
        }
    return handleExplosions(in: updatedState, alreadyExplodedCells: alreadyExplodedCells.union(newlyExplodedCells))
}

func perform(steps stepsToGo: Int, on state: [Double], totalSteps: Int? = nil) -> [Double] {
    print("^ Result of step \((totalSteps ?? stepsToGo)-stepsToGo)")
    print("")
    print("===")
    guard stepsToGo > 0 else { return state }
    
    let updatedState = handleExplosions(in: vDSP.add(1, state))
        .map { value in value >= 10 ? 0 : value }
    return perform(steps: stepsToGo-1, on: updatedState, totalSteps: totalSteps ?? stepsToGo)
}

perform(steps: 250, on: input)

print("Total flashes: \(totalExplosion)")
