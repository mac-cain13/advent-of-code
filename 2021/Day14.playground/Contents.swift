//let template = "NNCB"
//let insertionRules = ["CH": "B","HH": "N","CB": "H","NH": "C","HB": "C","HC": "B","HN": "C","NN": "C","BH": "H","NC": "B","NB": "B","BN": "B","BB": "N","BC": "B","CC": "N","CN": "C",]

let template = "SCVHKHVSHPVCNBKBPVHV"
let insertionRules = ["SB": "B","HH": "P","VF": "N","BS": "S","NC": "C","BF": "H","BN": "H","SP": "H","BK": "H","FF": "N","VN": "B","FN": "C","FS": "S","PP": "F","ON": "H","FV": "F","KO": "F","PK": "H","VB": "S","HS": "B","NV": "O","PN": "S","VH": "B","OS": "P","BP": "H","OV": "B","HK": "S","NN": "K","SV": "C","PB": "F","SK": "F","FB": "S","NB": "K","HF": "P","FK": "K","KV": "P","PV": "F","BC": "S","FO": "N","HC": "F","CP": "B","KK": "F","PC": "S","HN": "O","SH": "H","CK": "P","CO": "F","HP": "K","PS": "C","KP": "F","OF": "K","KS": "F","NO": "V","CB": "K","NF": "N","SF": "F","SC": "P","FC": "V","BV": "B","SS": "O","KC": "K","FH": "C","OP": "C","CF": "K","VO": "V","VK": "H","KH": "O","NP": "V","NH": "O","NS": "V","BH": "C","CH": "S","CC": "F","CS": "P","SN": "F","BO": "S","NK": "S","OO": "P","VV": "F","FP": "V","OK": "C","SO": "H","KN": "P","HO": "O","PO": "H","VS": "N","PF": "N","CV": "F","BB": "H","VC": "H","HV": "B","CN": "S","OH": "K","KF": "K","HB": "S","OC": "H","KB": "P","OB": "C","VP": "C","PH": "K"]

// Implementation 1: Just loop
//func applyRules(to polymer: String) -> String {
//    var currentIndex = polymer.startIndex
//    var insertions: [(Character, String.Index)] = []
//    repeat {
//        let upperBound = polymer.index(after: currentIndex)
//        let pair = String(polymer[currentIndex...upperBound])
//        if let characterToInsert = insertionRules[pair] {
//            insertions.append((characterToInsert, upperBound))
//        }
//
//        currentIndex = upperBound
//    } while(currentIndex != polymer.index(before: polymer.endIndex))
//
//    return insertions.enumerated().reduce(polymer) { partialResult, enumeratedInsertion in
//        let offset = enumeratedInsertion.offset
//        let char = enumeratedInsertion.element.0
//        let index = enumeratedInsertion.element.1
//
//        let insertionIndex = partialResult.index(index, offsetBy: offset)
//
//        var copy = partialResult
//        copy.insert(char, at: insertionIndex)
//        return copy
//    }
//}
//
//let res = (0..<40).reduce(template) { partialResult, _ in
//    applyRules(to: partialResult)
//}
//let countedCharacters = res.reduce(into: [:]) { partialResult, char in
//    partialResult[char, default: 0] += 1
//}
//let highest = countedCharacters.max { lhs, rhs in lhs.value < rhs.value }
//let lowest = countedCharacters.min { lhs, rhs in lhs.value < rhs.value }
//
//print(highest!.value - lowest!.value)

// Implementations 2: Lets do replacement depth first in a recursive function
//let iterations = 40
//
//func charactersToInsert(into characterPair: String, iterations: Int) -> String {
//    guard iterations > 0 else { return "" }
//    guard let characterToInsert = insertionRules[characterPair] else { return "" }
//    
//    return charactersToInsert(into: [characterPair.first!] + characterToInsert, iterations: iterations - 1)
//      + characterToInsert
//      + charactersToInsert(into: characterToInsert + [characterPair.last!], iterations: iterations - 1)
//}
//
//let res = (0..<template.count)
//    .map { position -> String in
//        let lowerBound = template.index(template.startIndex, offsetBy: position)
//        let upperBound = template.index(lowerBound, offsetBy: 1, limitedBy: template.index(before: template.endIndex)) ?? template.index(before: template.endIndex)
//        return String(template[lowerBound...upperBound])
//    }
//    .map { characterPair -> String in
//        print(characterPair)
//        return [characterPair.first!] + charactersToInsert(into: characterPair, iterations: iterations)
//    }
//    .joined()
//
//let countedCharacters = res.reduce(into: [:]) { partialResult, char in
//    partialResult[char, default: 0] += 1
//}
//let highest = countedCharacters.max { lhs, rhs in lhs.value < rhs.value }
//let lowest = countedCharacters.min { lhs, rhs in lhs.value < rhs.value }
//
//print(highest!.value - lowest!.value)

// Implementation 3.5: Focus on the counting, not the inserting
var characterCount = template
    .reduce(into: [:]) { partialResult, character in partialResult[String(character), default: 0] += 1 }

let initialPairCount = (0..<template.count-1)
    .map { position -> String in
        let lowerBound = template.index(template.startIndex, offsetBy: position)
        let upperBound = template.index(after: lowerBound)
        return String(template[lowerBound...upperBound])
    }
    .reduce(into: [:]) { partialResult, pair in partialResult[pair, default: 0] += 1 }

func applyRules(to pairs: [String: Int]) -> [String: Int] {
    pairs.reduce(into: [:]) { partialResult, item in
        let (pair, count) = item
        let characterToInsert = insertionRules[pair]!
        
        characterCount[characterToInsert, default: 0] += count

        partialResult[String(pair.first!) + characterToInsert, default: 0] += count
        partialResult[characterToInsert + String(pair.last!), default: 0] += count
    }
}

(0..<40)
    .reduce(initialPairCount) { partialResult, _ in applyRules(to: partialResult) }

let highest = characterCount.max { lhs, rhs in lhs.value < rhs.value }
let lowest = characterCount.min { lhs, rhs in lhs.value < rhs.value }

highest!.value - lowest!.value
