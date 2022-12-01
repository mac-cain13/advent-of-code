import UIKit

func calcRating(_ input: [[Int]], useDominant: Bool, position: Int = 0) -> String {
    let startsWithOneCount = input.compactMap { $0[position] }.reduce(0, +)
    let startsWithZeroCount = input.count - startsWithOneCount
    
    let bitToFilterOn: Int
    if (useDominant) {
        bitToFilterOn = (startsWithOneCount >= startsWithZeroCount) ? 1 : 0
    } else {
        bitToFilterOn = (startsWithOneCount >= startsWithZeroCount) ? 0 : 1
    }
    
    let updatedInput = input.filter { $0[position] == bitToFilterOn }
    if updatedInput.count > 1 {
        return calcRating(updatedInput, useDominant: useDominant, position: position+1)
    } else {
        return updatedInput.first?.map(String.init).joined(separator: "") ?? "FAILED"
    }
}

let oxygenGeneratorRating = calcRating(Day3.input, useDominant: true)
let co2ScrubberRating = calcRating(Day3.input, useDominant: false)

Int(oxygenGeneratorRating, radix: 2)! * Int(co2ScrubberRating, radix: 2)!


let input = [
[0,0,1,0,0],
[1,1,1,1,0],
[1,0,1,1,0],
[1,0,1,1,1],
[1,0,1,0,1],
[0,1,1,1,1],
[0,0,1,1,1],
[1,1,1,0,0],
[1,0,0,0,0],
[1,1,0,0,1],
[0,0,0,1,0],
[0,1,0,1,0],
]
