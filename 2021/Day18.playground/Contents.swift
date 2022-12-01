let input: [[Any]] = [
    [[[3,[8,6]],[6,1]],[[[1,1],2],[[1,0],0]]],
    [[[1,[7,3]],1],9],
    [[[2,6],[[3,1],[0,9]]],[[7,[4,8]],[[2,7],3]]],
    [[[3,[0,4]],[[8,4],[1,9]]],[7,[2,[5,7]]]],
    [[[4,5],[[0,7],1]],[9,[0,4]]],
    [[5,[[1,5],[3,6]]],8],
    [[3,[[9,3],9]],9],
    [2,[[[2,1],[0,5]],[9,9]]],
    [[2,[6,9]],[[[4,1],0],[3,4]]],
    [[[[6,8],0],[[8,8],9]],[[[4,2],3],[3,[7,3]]]],
    [[3,7],9],
    [[[[2,5],8],[2,5]],[[0,[5,7]],[[2,5],4]]],
    [[[8,[6,6]],0],[4,[[5,6],[8,4]]]],
    [[[1,[8,2]],[[0,4],[2,6]]],[[3,4],0]],
    [[1,[[9,2],[6,0]]],[[[0,9],5],[[8,0],[1,5]]]],
    [[2,[[2,3],[1,8]]],[3,[[7,2],[0,7]]]],
    [[5,4],5],
    [[[[4,2],[4,8]],[7,3]],[0,[[8,9],6]]],
    [[[6,7],0],5],
    [[2,[[9,0],[8,4]]],[[[7,4],[3,4]],0]],
    [[[9,[8,9]],1],[[5,[6,7]],3]],
    [[2,[0,0]],[3,[[2,5],[1,4]]]],
    [[0,1],[0,[[8,8],[8,3]]]],
    [[[0,2],[2,8]],[1,[[7,0],0]]],
    [[[[5,4],3],[[7,5],[2,6]]],[[5,8],[0,1]]],
    [0,[0,0]],
    [[5,[[5,6],0]],[[[2,7],9],[7,9]]],
    [[[[0,8],2],[[2,5],[7,6]]],[[9,7],[[8,7],[9,2]]]],
    [[[0,[4,6]],[[6,3],[4,4]]],[8,[[4,8],[4,8]]]],
    [[[[8,9],[3,8]],8],[[[7,9],6],[9,[2,7]]]],
    [[[[8,9],[1,6]],0],[[[8,7],4],[9,[1,4]]]],
    [5,7],
    [[[[1,5],[3,6]],[[5,5],4]],[[3,3],[4,[4,0]]]],
    [[[0,6],[5,[5,3]]],[[4,[0,0]],8]],
    [7,[6,8]],
    [[[[8,5],9],[[3,2],7]],[[[6,6],5],2]],
    [[[[4,4],[0,4]],9],0],
    [[0,[3,[9,3]]],[9,[[8,0],[0,9]]]],
    [[[[4,0],0],[1,[1,7]]],[[3,[3,0]],[[1,3],6]]],
    [[9,4],[3,[[7,1],6]]],
    [[[[3,7],7],1],[[4,3],[[6,9],[6,9]]]],
    [[[8,[2,5]],[[8,4],4]],[[[3,4],[6,7]],[5,[8,5]]]],
    [2,[4,[[3,2],7]]],
    [[[[3,1],[5,6]],[[2,7],7]],[4,[8,[7,4]]]],
    [[7,8],[[[3,9],7],2]],
    [[[[8,8],[5,8]],[[1,0],[6,0]]],[[[1,2],6],[[4,2],[5,5]]]],
    [[1,[0,9]],[[[2,1],1],1]],
    [[6,[8,1]],[4,[[7,8],5]]],
    [[[1,[1,6]],[1,[5,7]]],[[[2,8],6],0]],
    [9,1],
    [[[0,[6,5]],[[8,5],2]],[[[2,4],[7,3]],[[1,5],[9,2]]]],
    [[[2,7],[0,[3,6]]],[[[1,0],[9,6]],[1,[0,4]]]],
    [6,[[[5,9],8],[0,2]]],
    [7,[[[9,4],[8,6]],[[1,1],1]]],
    [[[2,1],0],8],
    [1,[[6,[1,4]],[[0,0],[1,9]]]],
    [[[1,[7,9]],2],8],
    [[[[0,9],2],[[8,4],9]],[0,[[7,7],[4,8]]]],
    [[1,[2,[1,8]]],[[[3,6],[2,1]],[3,[5,0]]]],
    [[3,3],[3,5]],
    [[[[9,3],[4,3]],[5,[8,1]]],[[6,[5,0]],9]],
    [0,[[9,[3,5]],3]],
    [[[9,1],0],[[[5,9],[8,0]],[7,[4,8]]]],
    [[[[7,7],8],3],[[[6,6],[6,5]],[6,4]]],
    [[[[3,7],1],[9,[4,2]]],[[9,[2,5]],[[9,0],5]]],
    [5,[[0,2],6]],
    [[[[2,7],[5,3]],[1,8]],2],
    [[[8,[7,7]],[9,[0,0]]],4],
    [[[4,[1,4]],0],[[[8,7],8],[[4,1],7]]],
    [[[[0,6],0],[[3,2],[9,8]]],[[9,[4,5]],[[7,7],[0,8]]]],
    [[[[6,3],3],[[1,5],7]],[[0,1],[7,7]]],
    [[[[2,0],2],[3,[3,5]]],[[[0,8],[8,2]],[[0,6],5]]],
    [[[6,[5,3]],[[5,5],9]],[[5,9],[[8,7],[3,7]]]],
    [[[[1,7],[3,4]],[9,2]],1],
    [[[[8,2],6],1],[[5,[2,7]],[3,9]]],
    [5,[5,7]],
    [[[[9,8],[3,4]],[[2,5],[5,6]]],[[[2,7],7],[9,[8,7]]]],
    [[[1,4],[[6,1],[1,3]]],[1,[7,[1,7]]]],
    [[[[1,4],8],[[5,1],8]],[[[1,3],[6,9]],[6,[3,3]]]],
    [[[[4,0],[0,7]],[4,5]],[4,2]],
    [3,8],
    [7,[[[7,6],5],[[6,6],5]]],
    [[[5,[0,5]],[4,4]],[3,[[4,2],[7,0]]]],
    [[[[7,9],8],[9,6]],[5,0]],
    [[[[3,0],[5,2]],1],[[[6,9],[5,3]],[[2,5],[6,3]]]],
    [7,[[[7,7],[4,5]],[9,2]]],
    [[7,[[4,2],[9,3]]],[7,[6,1]]],
    [7,9],
    [[[8,[8,1]],[[7,3],1]],[[9,8],[2,[8,3]]]],
    [[[9,3],3],3],
    [[[8,[5,7]],[[2,1],[1,3]]],[[[3,5],2],0]],
    [[[8,8],0],[[1,4],[[8,6],9]]],
    [[9,[3,[3,0]]],[1,7]],
    [1,[[[8,8],1],[2,[0,5]]]],
    [[0,[1,5]],[9,[0,[9,0]]]],
    [1,[[[1,1],[8,3]],[1,8]]],
    [[5,[[7,7],[3,3]]],[[[6,6],[7,8]],[1,[0,0]]]],
    [[[[6,7],1],[0,2]],[[[4,2],[7,6]],[[8,4],[4,9]]]],
    [[6,[[3,3],[9,0]]],[1,[[4,5],4]]],
    [[[[3,4],7],[9,0]],[[[4,5],1],[[5,1],[9,3]]]],
]

enum Direction: Int {
    case left = -1
    case right = 1
}

class PairOrNumber: CustomStringConvertible {
    var root: PairOrNumber { parent?.root ?? self }
    var parent: PairOrNumber?
    var depth: Int {
        var depth = 0
        var currentNode: PairOrNumber? = self
        while currentNode != nil {
            depth += 1
            currentNode = currentNode?.parent
        }
        return depth
    }

    var pair: (lhs: PairOrNumber, rhs: PairOrNumber)?
    var number: Int?

    var isPair: Bool { pair != nil }
    
    init(rawValue: Any, parent: PairOrNumber? = nil) {
        self.parent = parent
        
        if let integerValue = rawValue as? Int {
            number = integerValue
        } else if let arrayValue = rawValue as? [Any] {
            pair = (
                lhs: PairOrNumber(rawValue: arrayValue.first!, parent: self),
                rhs: PairOrNumber(rawValue: arrayValue.last!, parent: self)
            )
        } else {
            fatalError("Unknown type: \(type(of: rawValue))")
        }
    }
    
    static func +(lhs: PairOrNumber, rhs: PairOrNumber) -> PairOrNumber {
        assert(lhs.isPair && rhs.isPair)
        return PairOrNumber(lhs: lhs, rhs: rhs).reduce()
    }
    
    func reduce() -> Self {
        assert(parent == nil)
        
        repeat {
            explode()
        } while split();
        
        return self
    }
    
    func neighbour(direction: Direction) -> PairOrNumber? {
        assert(!isPair, "Neighbour can only be used on numbers; \(self)")
        let flatTree = root.flatten()
        let ourIndex = flatTree.lastIndex { $0 === self }!
        let neighbourIndex = ourIndex + direction.rawValue
        if flatTree.indices.contains(neighbourIndex) {
            return flatTree[neighbourIndex]
        } else {
            return nil
        }
    }

    private func explode() {
        guard let (lhs, rhs) = pair else { return }
        if depth > 4 {
            if let leftNeighbour = lhs.neighbour(direction: .left) {
                leftNeighbour.number! += lhs.number!
            }
            if let rightNeighbour = rhs.neighbour(direction: .right) {
                rightNeighbour.number! += rhs.number!
            }
            self.pair = nil
            self.number = 0
        } else {
            lhs.explode()
            rhs.explode()
        }
    }

    private func split() -> Bool {
        if let (lhs, rhs) = pair {
            return lhs.split() || rhs.split()
        } else if let number = number, number > 9 {
            pair = (
                PairOrNumber(rawValue: number/2, parent: self),
                PairOrNumber(rawValue: number/2 + number%2, parent: self)
            )
            self.number = nil
            return true
        }
        return false
    }
    
    private init(lhs: PairOrNumber, rhs: PairOrNumber) {
        assert(lhs.parent == nil && rhs.parent == nil)

        pair = (lhs, rhs)
        lhs.parent = self
        rhs.parent = self
    }

    func flatten() -> [PairOrNumber] {
        if let (lhs, rhs) = pair { return [lhs, rhs].flatMap { $0.flatten() } }
        return [self]
    }

    var description: String {
        if let (lhs, rhs) = pair { return "[\(lhs),\(rhs)]" }
        if let number = number { return number.description }
        return "?"
    }
    
    func magnitude() -> Int {
        if let number = number {
            return number
        } else if let (lhs, rhs) = pair {
            return 3 * lhs.magnitude() + 2 * rhs.magnitude()
        }
        fatalError()
    }
}

// Part 1
let sumMagnitude = input
    .map { PairOrNumber(rawValue: $0) }
    .dropFirst()
    .reduce(PairOrNumber(rawValue: input.first!), +)
    .magnitude()
print("Part 1:", sumMagnitude)

// Part 2
let largestMagnitude = input.enumerated().flatMap { (lhsIndex, lhsNumber) in
    input.enumerated().compactMap { (rhsIndex, rhsNumber) -> Int? in
        if (lhsIndex == rhsIndex) { return nil }
        let sum = PairOrNumber(rawValue: lhsNumber) + PairOrNumber(rawValue: rhsNumber)
        return sum.magnitude()
    }
}
.max()

print("Part 2:", largestMagnitude!)

