let input = [("start", "A"), ("start", "b"), ("A", "c"), ("A", "b"), ("b", "d"), ("A", "end"), ("b", "end")]
//let input = [("dc", "end"),("HN", "start"),("start", "kj"),("dc", "start"),("dc", "HN"),("LN", "dc"),("HN", "end"),("kj", "sa"),("kj", "HN"),("kj", "dc")]
//let input = [("fs", "end"),("he", "DX"),("fs", "he"),("start", "DX"),("pj", "DX"),("end", "zg"),("zg", "sl"),("zg", "pj"),("pj", "he"),("RW", "he"),("fs", "DX"),("pj", "RW"),("zg", "RW"),("start", "pj"),("he", "WI"),("zg", "he"),("pj", "fs"),("start", "RW")]
//let input = [("TR","start"),("xx","JT"),("xx","TR"),("hc","dd"),("ab","JT"),("hc","end"),("dd","JT"),("ab","dd"),("TR","ab"),("vh","xx"),("hc","JT"),("TR","vh"),("xx","start"),("hc","ME"),("vh","dd"),("JT","bm"),("end","ab"),("dd","xx"),("end","TR"),("hc","TR"),("start","vh")]

// Assuming:
// - 2 large caves are never directly connected (because that could create an infinite loop)
// - input states connections only once (so we don't need to deduplicate)
typealias CaveSystem = [String: [String]]

let caveSystem = input
    .reduce(into: CaveSystem()) { caveSystem, path in
        caveSystem[path.0, default: []].append(path.1)
        caveSystem[path.1, default: []].append(path.0)
    }

func generatePaths(caveSystem: CaveSystem, currentPath: [String] = ["start"]) -> [[String]] {
    guard currentPath.last! != "end" else { return [currentPath] }

    let visitedSmallCaves = currentPath.filter { $0.lowercased() == $0 }
//    let isDoubleVisitAllowed = false // Uncomment for part 1
    let isDoubleVisitAllowed = !visitedSmallCaves
        .reduce(into: [:]) { partialResult, cave in partialResult[cave, default: 0] += 1 }
        .values
        .contains(2)

    return caveSystem[currentPath.last!]!
        .filter { $0 != "start" }
        .filter { isDoubleVisitAllowed || !visitedSmallCaves.contains($0) }
        .flatMap { generatePaths(caveSystem: caveSystem, currentPath: currentPath + [$0]) }
}

generatePaths(caveSystem: caveSystem).count
