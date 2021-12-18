//let template = "NNCB"
//let insertionRules: [String: Character] = ["CH": "B","HH": "N","CB": "H","NH": "C","HB": "C","HC": "B","HN": "C","NN": "C","BH": "H","NC": "B","NB": "B","BN": "B","BB": "N","BC": "B","CC": "N","CN": "C",]

let template = "SCVHKHVSHPVCNBKBPVHV"
let insertionRules: [String: Character] = ["SB": "B","HH": "P","VF": "N","BS": "S","NC": "C","BF": "H","BN": "H","SP": "H","BK": "H","FF": "N","VN": "B","FN": "C","FS": "S","PP": "F","ON": "H","FV": "F","KO": "F","PK": "H","VB": "S","HS": "B","NV": "O","PN": "S","VH": "B","OS": "P","BP": "H","OV": "B","HK": "S","NN": "K","SV": "C","PB": "F","SK": "F","FB": "S","NB": "K","HF": "P","FK": "K","KV": "P","PV": "F","BC": "S","FO": "N","HC": "F","CP": "B","KK": "F","PC": "S","HN": "O","SH": "H","CK": "P","CO": "F","HP": "K","PS": "C","KP": "F","OF": "K","KS": "F","NO": "V","CB": "K","NF": "N","SF": "F","SC": "P","FC": "V","BV": "B","SS": "O","KC": "K","FH": "C","OP": "C","CF": "K","VO": "V","VK": "H","KH": "O","NP": "V","NH": "O","NS": "V","BH": "C","CH": "S","CC": "F","CS": "P","SN": "F","BO": "S","NK": "S","OO": "P","VV": "F","FP": "V","OK": "C","SO": "H","KN": "P","HO": "O","PO": "H","VS": "N","PF": "N","CV": "F","BB": "H","VC": "H","HV": "B","CN": "S","OH": "K","KF": "K","HB": "S","OC": "H","KB": "P","OB": "C","VP": "C","PH": "K"]

func applyRules(to polymer: String) -> String {
    var currentIndex = polymer.startIndex
    var insertions: [(Character, String.Index)] = []
    repeat {
        let upperBound = polymer.index(after: currentIndex)
        let pair = String(polymer[currentIndex...upperBound])
        if let characterToInsert = insertionRules[pair] {
            insertions.append((characterToInsert, upperBound))
        }
        
        currentIndex = upperBound
    } while(currentIndex != polymer.index(before: polymer.endIndex))

    return insertions.enumerated().reduce(polymer) { partialResult, enumeratedInsertion in
        let offset = enumeratedInsertion.offset
        let char = enumeratedInsertion.element.0
        let index = enumeratedInsertion.element.1
        
        let insertionIndex = partialResult.index(index, offsetBy: offset)
        
        var copy = partialResult
        copy.insert(char, at: insertionIndex)
        return copy
    }
}

let res = (0..<40).reduce(template) { partialResult, i in
    print(i)
    return applyRules(to: partialResult)
}
let countedCharacters = res.reduce(into: [:]) { partialResult, char in
    partialResult[char, default: 0] += 1
}
let highest = countedCharacters.max { lhs, rhs in lhs.value < rhs.value }
let lowest = countedCharacters.min { lhs, rhs in lhs.value < rhs.value }

print(highest!.value - lowest!.value)
