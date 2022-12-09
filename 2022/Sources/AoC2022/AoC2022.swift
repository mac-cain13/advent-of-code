import Foundation

@main
public struct AoC2022 {
    public static func main() {
        print("AoC2022")
        
        let samplePath = Bundle.module.path(forResource: "day9", ofType: "input", inDirectory: "Input")!
        _ = day9(ropeLength: 2)(samplePath)
    }
}
