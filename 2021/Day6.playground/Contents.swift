import Accelerate

//let initialState: [Double] = [3,4,3,1,2]
//let daysToSimulate = 18 // 26
//let daysToSimulate = 80 // 5934
//let daysToSimulate = 125 // 297687; vDSP 0,058 @38% cpu / flatMap 0,826 @95% cpu
//let daysToSimulate = 256 // vDSP killed after 2:24

let initialState: [Double] = [1,1,3,5,1,1,1,4,1,5,1,1,1,1,1,1,1,3,1,1,1,1,2,5,1,1,1,1,1,2,1,4,1,4,1,1,1,1,1,3,1,1,5,1,1,1,4,1,1,1,4,1,1,3,5,1,1,1,1,4,1,5,4,1,1,2,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1,5,1,1,1,3,4,1,1,1,1,3,1,1,1,1,1,4,1,1,3,1,1,3,1,1,1,1,1,3,1,5,2,3,1,2,3,1,1,2,1,2,4,5,1,5,1,4,1,1,1,1,2,1,5,1,1,1,1,1,5,1,1,3,1,1,1,1,1,1,4,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,3,2,1,1,1,1,2,2,1,2,1,1,1,5,5,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,4,2,1,4,1,1,1,1,1,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,5,1,1,1,1,1,1,1,1,3,1,1,3,3,1,1,1,3,5,1,1,4,1,1,1,1,1,4,1,1,3,1,1,1,1,1,1,1,1,2,1,5,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1]

// Part 1: Already very slow in playgrounds that prints every step
func simulateFlatmap(state: [Double], days: Int) -> [Double] { // Compiled binary uses 96% cpu 1,058 sec total
    guard days > 0 else { return state }
    let updatedState = vDSP.add(-1, state).flatMap { lanternfish in
        lanternfish < 0 ? [6.0, 8.0] : [lanternfish]
    }
    return simulateFlatmap(state: updatedState, days: days-1)
}
print(simulateFlatmap(state: initialState, days: 80).count)

// Part 1: Using as much vDSP as possible its workable in playgrounds
func simulateVDSP(state: [Double], days: Int) -> [Double] { // Compiled binary uses 50% cpu 0,056 sec total
    guard days > 0 else { return state }

    // Filter birth giving laternfish out
    let nonBirthGivingLanternfish = vDSP.compress(state, gatingVector: state, nonZeroGatingCount: nil)

    // Count number of laternfish giving birth
    let numberOfLanternfishGivingBirth = state.count - nonBirthGivingLanternfish.count

    // Reduce count by one
    let updatedNonBirthGivingLanternfish = vDSP.add(-1, nonBirthGivingLanternfish)
    let resetLanternfish = Array(repeating: 6.0, count: numberOfLanternfishGivingBirth) // Birth giving fish reset
    let babyLanternfish = Array(repeating: 8.0, count: numberOfLanternfishGivingBirth) // Baby fish

    return simulateVDSP(state: (updatedNonBirthGivingLanternfish + resetLanternfish) + babyLanternfish, days: days-1)
}
print(simulateVDSP(state: initialState, days: 80).count)

// Part 2: First implementations go out of memory, lets group stuff :)
func simulateGroupedArray(state: [Int], days: Int) -> [Int] {
    guard days > 0 else { return state }
    
    let birthGivingLanternfish = state[0]
    var updatedState = Array(state[1...8]) + [birthGivingLanternfish]
    updatedState[6] += birthGivingLanternfish
    return simulateGroupedArray(state: updatedState, days: days-1)
}

let groupedInitialState = initialState.reduce(into: [Int](repeating: 0, count: 9)) { partialResult, lanternfish in
    partialResult[Int(lanternfish)] += 1
}
print(simulateGroupedArray(state: groupedInitialState, days: 256).reduce(0, +))
