import Foundation

public class Day3 {
    public static let input = [
        [0,0,0,1,1,0,0,1,0,0,0,1],
        [1,0,1,0,0,0,1,1,0,0,0,0],
        [0,0,0,1,1,0,0,1,0,1,1,1],
        [1,0,0,0,1,1,1,0,0,0,1,0],
        [1,1,1,0,0,1,1,0,0,0,0,1],
        [0,0,1,0,1,0,0,0,1,0,1,0],
        [0,1,0,1,0,0,1,0,0,1,0,1],
        [0,1,1,0,0,0,0,1,0,0,0,0],
        [1,1,1,1,1,1,0,1,1,0,1,0],
        [0,0,1,1,1,1,0,1,1,1,0,1],
        [0,1,1,0,1,1,0,1,0,0,1,0],
        [0,0,1,1,0,0,0,1,0,1,0,1],
        [0,0,1,0,1,0,1,0,1,1,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0],
        [1,0,0,0,1,0,1,1,1,1,1,1],
        [1,0,0,1,0,0,1,1,0,0,1,1],
        [1,1,1,1,0,0,1,0,0,0,0,1],
        [0,1,1,1,1,0,0,0,1,1,1,0],
        [0,0,0,1,1,0,1,0,0,1,0,1],
        [0,1,1,1,0,1,1,1,1,0,0,1],
        [1,1,1,1,0,1,1,1,0,1,1,0],
        [1,0,1,0,0,1,0,0,1,1,1,1],
        [0,1,0,1,1,1,1,0,0,0,1,0],
        [0,0,1,1,1,0,1,0,0,0,1,1],
        [1,1,0,0,1,0,1,1,1,1,0,1],
        [1,1,0,0,0,0,0,0,1,1,0,1],
        [1,1,0,1,1,0,1,1,1,1,0,1],
        [1,0,1,1,0,0,0,0,0,1,1,0],
        [1,0,1,1,0,1,0,1,0,1,1,0],
        [0,0,1,0,1,1,0,0,1,1,1,0],
        [1,1,1,1,1,0,0,0,0,1,1,1],
        [0,1,1,1,1,0,0,1,0,1,1,0],
        [0,1,1,0,0,1,1,1,0,1,0,0],
        [1,1,0,1,0,1,1,0,1,1,1,0],
        [1,0,1,1,1,0,0,0,1,1,0,0],
        [1,0,0,1,1,1,0,0,0,0,1,0],
        [1,0,1,1,1,1,0,1,0,0,0,1],
        [1,1,1,1,1,0,0,0,0,1,0,1],
        [0,1,0,1,0,0,1,1,1,1,1,1],
        [0,1,0,1,1,0,1,1,1,0,1,1],
        [0,0,0,0,0,0,1,0,0,1,0,1],
        [0,0,1,0,0,0,1,0,1,0,1,1],
        [0,1,1,1,0,0,1,0,1,1,1,0],
        [0,1,0,0,1,1,0,0,0,1,0,0],
        [1,1,0,0,1,1,1,0,0,0,0,1],
        [1,0,0,1,0,0,1,0,1,1,1,0],
        [1,1,1,1,0,1,1,1,0,0,1,1],
        [0,1,0,1,0,0,0,1,0,0,1,0],
        [1,1,0,1,0,0,0,1,0,0,0,0],
        [0,0,0,1,0,1,0,0,1,1,0,1],
        [1,0,1,0,1,0,1,1,0,1,0,0],
        [0,0,0,0,1,1,1,0,0,1,1,0],
        [0,0,0,1,0,0,1,1,0,1,0,0],
        [1,1,1,0,0,1,0,1,1,0,0,1],
        [0,1,0,1,0,1,0,0,1,1,1,0],
        [1,1,0,1,0,0,1,1,0,1,0,0],
        [1,1,1,0,1,0,0,0,1,0,1,0],
        [1,1,1,1,1,1,1,0,1,1,1,1],
        [1,1,1,0,0,0,0,1,1,0,0,1],
        [1,1,1,1,1,0,0,0,0,0,0,0],
        [0,1,1,1,1,1,1,1,1,0,1,1],
        [0,1,0,1,0,0,1,0,0,0,0,1],
        [0,1,0,1,1,0,1,0,0,1,0,0],
        [1,1,0,0,0,0,0,1,1,1,1,0],
        [0,0,1,1,0,0,1,0,1,1,0,1],
        [0,1,0,0,1,1,0,0,1,0,0,0],
        [1,0,1,1,1,0,1,1,0,1,1,0],
        [0,0,1,0,0,1,0,1,1,0,1,1],
        [1,0,0,1,0,0,1,0,1,1,0,1],
        [0,0,1,1,1,1,0,0,0,1,0,0],
        [1,0,1,0,0,1,0,1,0,0,0,0],
        [1,1,0,1,0,1,0,1,0,0,1,0],
        [1,0,1,1,1,1,1,0,0,1,0,1],
        [0,0,1,0,1,1,1,0,1,0,1,0],
        [0,0,1,1,1,0,0,1,0,1,1,1],
        [1,0,0,1,1,1,1,1,1,0,0,0],
        [0,1,0,0,1,0,1,1,0,1,1,0],
        [0,0,0,1,0,0,1,0,0,0,1,0],
        [0,1,0,1,1,1,1,0,0,1,0,0],
        [0,0,1,0,0,0,1,0,0,0,0,1],
        [1,0,1,1,0,0,1,0,0,1,1,1],
        [1,1,1,0,0,1,0,0,0,0,0,1],
        [1,1,0,0,1,0,1,1,1,1,0,0],
        [0,0,0,1,1,0,0,1,1,1,0,1],
        [0,0,0,0,0,1,0,1,0,0,1,0],
        [0,0,1,0,1,0,0,1,0,1,1,1],
        [0,0,1,1,0,1,0,0,0,1,0,0],
        [0,0,0,1,1,0,1,1,1,1,0,1],
        [1,1,1,0,1,1,0,1,1,0,0,0],
        [0,1,1,1,1,0,1,0,1,0,0,0],
        [1,0,0,1,0,1,0,0,0,0,1,1],
        [0,0,1,0,0,0,0,1,1,1,0,0],
        [1,1,1,1,0,1,0,0,1,0,0,1],
        [0,0,0,0,1,1,1,1,0,0,1,1],
        [0,1,1,0,1,0,1,0,1,0,0,1],
        [0,0,0,1,1,1,0,0,0,1,0,1],
        [0,1,1,0,0,0,0,1,1,0,0,1],
        [0,1,1,0,1,0,0,1,0,1,0,0],
        [0,1,0,1,1,0,0,0,1,1,1,0],
        [0,1,1,0,1,0,0,1,0,1,1,0],
        [1,1,1,0,1,0,1,1,1,1,1,0],
        [0,1,0,1,0,1,0,0,0,0,1,0],
        [1,0,0,0,1,0,0,1,1,1,0,0],
        [1,1,0,0,0,1,1,1,1,1,0,0],
        [1,0,0,1,0,1,1,0,0,0,0,1],
        [0,1,0,0,0,1,1,1,0,0,1,0],
        [0,0,1,0,0,0,0,1,0,0,1,1],
        [1,1,1,0,1,0,0,1,1,1,0,1],
        [1,1,0,0,0,1,1,1,1,0,0,0],
        [1,0,1,1,0,0,0,1,0,0,1,1],
        [0,1,0,0,0,0,0,1,0,1,1,0],
        [1,0,1,0,1,1,0,0,1,1,0,1],
        [0,0,0,1,1,0,0,0,0,1,0,1],
        [0,1,0,0,0,0,1,0,1,1,1,1],
        [0,0,1,1,0,0,0,1,0,1,0,0],
        [1,0,0,1,1,0,0,1,0,1,1,1],
        [0,1,0,0,0,0,0,1,0,0,0,1],
        [0,1,1,1,0,0,1,0,0,1,0,1],
        [1,1,0,0,1,1,0,1,0,0,0,0],
        [1,1,1,1,0,1,0,0,1,1,1,0],
        [0,0,1,1,0,1,1,1,0,0,1,0],
        [0,0,0,0,1,1,0,0,0,1,1,0],
        [0,1,1,0,0,0,0,1,0,1,1,1],
        [0,0,0,1,0,1,0,1,0,0,0,0],
        [1,0,1,1,1,1,1,1,0,1,1,0],
        [1,0,1,0,0,1,0,1,1,0,0,0],
        [1,1,1,0,1,0,0,0,1,0,0,0],
        [0,0,1,1,0,0,1,0,0,0,1,0],
        [1,1,1,1,0,0,0,0,1,1,0,0],
        [0,1,1,0,0,0,0,0,1,1,0,0],
        [1,1,1,0,1,0,1,1,0,1,0,0],
        [0,1,1,1,1,1,0,1,0,1,1,0],
        [1,1,1,0,1,1,1,0,0,0,0,0],
        [1,1,0,0,1,0,1,1,0,1,1,0],
        [1,0,0,1,1,1,0,0,1,1,0,1],
        [1,0,1,1,1,1,1,1,1,0,1,0],
        [0,0,0,1,0,1,1,0,1,1,1,0],
        [0,1,1,0,1,1,0,0,0,1,1,1],
        [1,1,0,0,0,1,1,0,1,1,0,0],
        [0,0,1,1,1,0,0,0,1,1,1,0],
        [1,0,0,1,0,0,0,0,1,0,1,1],
        [1,1,1,0,0,0,0,0,1,1,1,0],
        [1,1,0,0,0,0,1,1,1,1,1,1],
        [1,0,0,1,1,0,1,1,1,1,1,1],
        [1,0,0,1,0,0,0,0,0,0,1,1],
        [1,1,1,1,0,1,1,1,0,0,0,1],
        [0,0,0,1,0,0,0,0,1,1,1,1],
        [0,0,0,1,0,1,0,0,0,1,1,1],
        [0,0,1,0,1,1,0,0,0,1,1,1],
        [0,1,0,0,1,1,0,0,1,1,0,0],
        [1,0,0,0,0,1,1,0,1,1,1,0],
        [1,1,1,1,0,0,0,0,1,0,1,0],
        [1,1,0,1,0,0,1,0,1,1,0,1],
        [1,0,0,1,1,1,1,0,0,0,0,1],
        [0,1,1,0,0,0,1,0,0,1,1,1],
        [1,0,1,0,1,0,0,1,0,0,1,0],
        [1,1,1,1,0,1,0,0,0,1,1,1],
        [0,0,0,0,1,0,1,1,0,1,0,1],
        [0,0,1,1,0,0,0,1,0,0,1,0],
        [0,0,1,1,1,1,1,1,1,1,0,1],
        [0,0,1,1,0,1,1,1,1,0,1,1],
        [0,0,1,0,1,1,1,0,1,1,1,0],
        [0,1,1,1,0,0,0,0,0,1,1,1],
        [1,1,0,0,1,0,1,1,1,1,1,1],
        [1,0,0,1,1,0,1,1,0,1,0,1],
        [1,0,0,1,1,0,0,0,0,0,0,1],
        [0,0,1,0,1,1,1,0,0,0,1,0],
        [1,0,0,0,1,0,1,1,1,0,0,0],
        [0,0,0,0,0,0,1,1,1,0,0,0],
        [1,1,1,0,1,0,1,0,0,1,0,0],
        [0,1,0,1,0,1,1,0,1,1,1,0],
        [1,0,0,1,1,1,0,1,1,1,1,1],
        [1,1,1,1,0,1,0,1,0,1,0,0],
        [0,1,0,0,0,0,1,1,1,0,1,1],
        [0,0,0,1,0,1,1,0,0,0,0,1],
        [1,0,1,0,1,0,1,0,0,0,0,0],
        [1,0,1,1,1,0,1,1,1,1,0,0],
        [0,1,0,0,0,0,0,1,1,0,1,1],
        [0,0,0,1,0,1,1,1,0,1,1,0],
        [1,0,0,1,1,0,0,0,0,0,0,0],
        [0,0,1,0,0,1,0,0,1,0,0,1],
        [1,1,0,1,1,0,1,0,1,1,0,0],
        [0,0,1,1,0,0,1,1,0,0,1,1],
        [1,0,0,1,1,1,0,0,1,1,1,1],
        [1,1,0,1,1,1,0,1,1,1,0,1],
        [0,0,1,1,1,0,1,1,0,0,1,0],
        [0,0,1,0,1,0,1,1,0,0,0,0],
        [0,0,1,0,0,1,1,0,0,1,0,1],
        [1,1,1,1,0,0,1,0,1,1,0,1],
        [1,0,0,0,0,1,1,1,1,1,0,0],
        [0,1,1,0,0,1,0,1,1,1,1,0],
        [0,1,0,0,1,0,1,0,0,0,1,0],
        [0,0,1,0,1,1,1,0,0,1,0,0],
        [0,0,0,1,0,0,1,1,1,0,1,0],
        [0,1,0,1,1,0,0,1,1,1,0,0],
        [0,1,1,1,0,0,0,0,0,1,0,1],
        [0,0,1,1,1,0,1,0,1,0,1,0],
        [0,1,0,0,1,1,1,0,1,0,1,0],
        [0,0,0,0,1,1,0,1,0,0,0,1],
        [0,1,1,1,0,1,1,0,1,1,0,0],
        [1,1,0,1,0,0,1,0,1,0,0,1],
        [1,0,1,0,1,1,1,1,0,1,1,0],
        [0,0,1,0,1,0,0,1,0,1,0,1],
        [1,1,1,1,1,0,0,1,1,0,1,0],
        [0,1,1,0,0,1,1,0,1,1,1,1],
        [0,0,1,0,0,0,1,1,1,1,1,1],
        [0,0,0,0,1,1,1,0,1,1,0,1],
        [0,1,0,0,0,1,0,0,1,0,0,1],
        [1,1,1,0,1,1,0,0,0,0,1,0],
        [0,0,1,0,1,1,1,1,0,0,1,0],
        [0,1,0,0,0,0,0,1,1,0,0,1],
        [1,1,0,0,0,0,1,1,0,0,0,1],
        [0,1,1,0,0,1,0,0,1,0,0,0],
        [1,1,0,0,1,1,0,1,1,0,0,0],
        [1,1,0,1,0,1,0,1,1,0,0,1],
        [1,0,0,0,0,0,1,0,0,0,1,1],
        [0,1,0,0,1,1,0,0,1,1,1,1],
        [1,0,0,1,0,0,1,0,1,0,0,0],
        [1,1,1,1,1,1,1,1,1,1,0,0],
        [0,1,1,0,1,1,0,1,0,1,0,1],
        [1,0,1,1,0,0,1,0,1,0,1,0],
        [1,1,1,1,1,0,0,1,1,1,1,1],
        [0,1,0,1,0,1,0,0,1,0,0,0],
        [0,1,1,1,1,0,1,0,0,0,0,0],
        [1,0,1,0,0,1,1,1,1,1,1,1],
        [1,1,0,0,0,0,1,0,1,1,1,0],
        [1,0,1,0,1,1,1,0,1,1,1,0],
        [1,0,1,1,1,1,0,0,1,1,1,0],
        [1,0,0,0,0,0,1,0,1,1,0,1],
        [0,1,0,0,1,0,0,0,1,0,1,1],
        [0,1,0,1,0,0,1,1,0,1,1,1],
        [1,1,1,0,1,1,1,1,0,0,0,1],
        [0,0,0,1,0,0,0,0,0,0,1,0],
        [1,0,0,0,0,0,1,1,1,0,0,0],
        [1,1,1,1,1,1,1,1,1,0,0,0],
        [1,1,0,1,1,1,1,0,0,1,1,1],
        [0,0,0,0,0,1,1,0,1,1,0,1],
        [1,0,0,0,0,1,1,1,0,0,1,1],
        [0,1,1,0,1,0,1,1,1,1,1,0],
        [1,0,0,1,1,1,1,1,1,1,0,0],
        [1,1,1,1,1,1,0,0,1,0,1,0],
        [0,0,1,0,0,1,0,0,0,1,0,0],
        [0,1,0,0,1,0,1,0,1,1,0,1],
        [1,1,0,1,0,0,1,0,0,0,0,0],
        [1,0,0,0,1,0,0,1,1,1,1,1],
        [0,1,0,0,0,0,0,0,0,1,1,0],
        [1,1,0,1,1,1,0,1,0,1,1,1],
        [1,0,1,0,0,0,0,0,1,0,0,0],
        [1,0,0,1,0,0,1,0,1,0,0,1],
        [0,0,1,0,0,1,0,0,0,0,1,0],
        [0,0,1,1,1,1,1,1,1,0,1,0],
        [0,0,1,0,1,1,0,1,1,0,0,0],
        [1,0,0,0,1,0,0,0,1,1,1,1],
        [1,1,0,0,1,1,1,0,1,1,1,0],
        [0,1,0,1,1,1,0,0,1,1,1,0],
        [0,0,1,0,1,1,0,1,0,0,1,1],
        [1,1,1,0,1,1,0,1,1,0,1,1],
        [0,1,0,1,0,0,1,0,0,1,0,0],
        [1,0,1,0,1,1,0,0,0,1,1,1],
        [0,0,0,0,1,1,1,1,1,1,1,1],
        [0,0,0,1,1,0,0,0,0,1,1,1],
        [1,1,0,0,0,0,1,1,0,1,0,0],
        [1,0,0,1,0,1,0,1,1,0,1,1],
        [0,0,1,0,0,1,1,1,0,1,1,0],
        [0,1,1,1,0,0,0,0,1,0,0,1],
        [0,0,1,1,1,1,1,1,0,1,0,0],
        [0,0,1,1,1,1,0,0,1,1,0,1],
        [1,1,0,0,1,0,0,1,1,0,0,1],
        [0,0,0,1,0,0,0,0,1,0,0,1],
        [0,0,0,1,1,0,0,1,0,1,1,0],
        [1,0,0,0,0,1,0,0,1,0,1,0],
        [0,1,1,1,0,0,1,1,1,0,0,0],
        [0,1,1,1,0,1,0,1,0,1,1,1],
        [0,1,1,1,1,1,0,0,0,1,1,0],
        [0,0,1,0,0,0,0,0,1,0,0,1],
        [1,1,0,0,1,1,0,0,0,1,0,1],
        [1,1,1,1,1,1,0,1,1,0,1,1],
        [1,1,1,1,1,0,0,1,0,0,1,1],
        [1,0,1,1,1,1,1,0,0,0,0,0],
        [1,0,1,0,1,1,0,0,0,1,0,0],
        [1,1,1,1,1,0,0,1,1,1,0,1],
        [0,1,0,1,0,0,1,0,1,0,1,0],
        [1,0,1,0,1,1,1,1,0,0,0,0],
        [0,0,0,1,0,0,0,1,0,1,0,0],
        [1,1,0,1,1,0,0,1,0,0,1,0],
        [1,0,0,0,1,1,0,0,1,1,0,1],
        [1,1,0,1,1,0,0,1,1,0,1,0],
        [0,1,1,1,0,0,1,1,1,0,1,1],
        [0,0,1,1,1,1,1,0,0,0,0,1],
        [1,1,0,0,1,1,1,0,0,1,0,1],
        [1,1,1,0,0,1,1,0,1,0,1,1],
        [0,1,0,0,0,0,1,1,0,1,0,1],
        [1,0,0,1,0,0,0,1,1,1,0,0],
        [1,1,1,0,0,0,1,1,1,0,0,1],
        [1,1,1,0,0,0,0,0,1,0,1,1],
        [0,1,0,1,1,0,1,0,0,0,1,1],
        [1,1,0,0,1,1,0,1,0,1,0,0],
        [0,1,0,0,1,1,1,0,1,1,1,1],
        [0,1,1,0,1,1,1,1,0,1,1,1],
        [0,1,0,1,0,1,1,0,1,0,1,0],
        [0,0,0,0,0,0,1,0,0,1,0,0],
        [1,0,0,1,1,1,0,1,1,1,0,1],
        [0,0,1,1,0,1,0,1,1,0,0,0],
        [1,1,0,1,1,1,0,0,0,1,0,1],
        [0,0,1,0,1,1,1,1,0,1,0,0],
        [0,0,1,1,0,0,0,0,0,1,0,0],
        [1,0,1,0,1,0,1,1,0,0,1,0],
        [0,1,1,0,0,0,1,0,0,0,0,0],
        [0,1,1,0,0,1,0,1,0,1,0,0],
        [1,1,1,1,0,0,0,0,0,0,0,0],
        [0,0,0,1,0,0,0,1,1,0,0,0],
        [0,0,1,0,0,0,1,1,1,0,0,0],
        [1,0,1,1,0,1,1,1,0,0,1,0],
        [0,0,0,1,0,0,0,1,1,0,0,1],
        [0,0,0,1,0,0,1,0,1,0,0,1],
        [0,1,0,0,1,0,0,1,0,1,0,1],
        [1,0,0,0,1,0,1,0,1,1,0,1],
        [1,0,0,0,1,0,0,1,0,1,1,0],
        [1,1,0,1,0,1,1,1,0,0,0,0],
        [1,0,0,0,1,1,1,0,0,1,1,0],
        [0,1,0,0,1,0,0,1,1,1,0,0],
        [0,1,0,0,0,1,0,1,1,0,1,1],
        [0,1,1,1,0,0,0,0,0,1,1,0],
        [1,0,1,0,0,0,1,0,1,0,1,1],
        [1,1,1,0,1,0,0,1,0,0,0,0],
        [0,1,1,1,0,0,1,1,1,0,0,1],
        [1,0,0,0,0,1,1,0,0,1,1,0],
        [1,1,1,1,0,0,0,0,0,1,1,0],
        [1,0,0,0,0,1,0,1,1,1,0,0],
        [1,1,1,0,0,1,1,1,0,1,0,1],
        [1,1,1,0,1,1,1,0,0,1,1,1],
        [1,1,0,1,0,1,0,1,0,0,0,1],
        [1,1,1,1,0,0,0,1,1,0,0,0],
        [1,0,0,1,1,1,1,0,1,0,1,0],
        [0,1,1,1,1,0,1,1,0,0,0,0],
        [0,0,1,0,1,1,0,0,0,1,0,1],
        [0,1,1,0,1,0,0,1,1,1,1,1],
        [1,1,1,1,0,0,1,1,1,1,1,0],
        [0,1,0,1,0,0,0,1,1,0,1,0],
        [0,0,0,0,1,0,0,1,1,1,0,1],
        [0,0,0,1,1,0,0,0,0,1,1,0],
        [0,1,1,0,0,1,0,1,0,0,0,1],
        [1,1,1,0,0,0,0,1,1,1,0,0],
        [0,0,0,1,1,1,0,1,0,1,1,0],
        [0,0,0,0,0,0,1,1,0,1,0,1],
        [0,1,0,0,1,1,1,0,1,0,1,1],
        [1,1,0,0,1,1,0,0,1,1,1,0],
        [0,1,1,0,1,1,1,1,0,1,1,0],
        [1,0,1,1,0,0,0,1,0,1,0,1],
        [0,0,0,0,1,1,0,1,1,0,0,1],
        [0,0,1,1,0,0,1,0,1,0,1,1],
        [1,0,1,0,0,0,0,1,0,1,0,1],
        [1,0,1,1,0,0,0,1,1,0,1,0],
        [0,0,0,1,1,1,1,1,1,1,1,0],
        [0,0,0,0,1,1,0,0,1,0,0,1],
        [1,1,1,0,1,1,1,0,1,1,1,0],
        [1,0,0,1,1,1,1,1,1,0,1,0],
        [0,0,0,1,0,1,0,0,0,0,1,1],
        [1,1,1,1,0,0,0,1,0,0,1,1],
        [0,1,0,0,0,1,1,0,1,0,1,0],
        [1,0,1,0,0,1,0,1,1,1,1,0],
        [1,1,0,0,1,0,1,1,0,0,0,0],
        [1,1,0,1,0,1,1,0,1,0,0,1],
        [0,0,0,0,1,1,1,0,1,1,1,0],
        [1,0,1,1,0,1,0,0,1,0,1,0],
        [1,1,0,1,0,0,0,0,1,1,0,1],
        [0,1,1,1,0,0,0,0,0,0,1,1],
        [1,0,0,0,1,1,1,0,0,1,0,1],
        [1,1,1,0,1,0,1,0,0,1,1,0],
        [1,0,0,0,1,0,1,1,0,0,0,1],
        [0,0,1,0,1,1,0,1,0,0,0,0],
        [0,0,1,0,0,1,0,1,0,1,0,0],
        [1,0,0,1,0,1,1,1,0,1,0,0],
        [1,0,0,1,0,0,0,0,1,1,1,1],
        [0,0,1,0,0,0,0,0,1,0,1,0],
        [1,1,1,0,0,1,0,0,0,1,0,1],
        [1,1,0,1,1,0,1,0,0,0,0,0],
        [0,0,1,0,1,0,1,0,0,0,1,0],
        [1,0,0,1,0,0,0,0,1,1,1,0],
        [1,0,0,1,1,1,0,1,0,0,1,0],
        [0,1,0,1,1,0,1,1,1,0,0,0],
        [0,1,0,1,0,0,0,0,1,0,1,0],
        [0,0,0,0,1,0,1,0,1,1,0,0],
        [0,0,1,0,1,0,1,1,1,1,0,0],
        [0,0,1,1,1,1,1,0,1,0,0,1],
        [1,0,1,0,1,1,1,1,1,1,0,1],
        [0,1,1,0,1,1,0,0,1,0,0,1],
        [1,0,1,0,0,0,1,0,0,1,1,0],
        [0,0,1,0,1,0,0,1,1,1,0,1],
        [0,0,1,0,1,1,1,1,0,0,0,0],
        [1,1,1,1,1,0,1,0,0,0,0,0],
        [1,0,1,1,0,0,1,1,1,0,1,0],
        [1,0,1,1,1,1,0,1,0,1,1,1],
        [0,1,1,0,0,0,0,0,0,1,0,1],
        [1,0,1,1,0,0,0,0,0,0,1,0],
        [0,1,0,1,0,1,1,1,1,1,1,0],
        [0,0,0,0,1,1,0,1,1,1,0,0],
        [1,1,1,1,1,0,1,1,1,0,1,0],
        [0,1,1,1,1,0,1,0,1,1,1,0],
        [1,1,1,0,1,1,1,0,0,0,1,0],
        [1,1,1,1,0,0,0,1,0,0,0,1],
        [1,0,0,0,0,0,1,0,0,1,1,0],
        [0,1,0,1,1,1,0,1,0,0,0,0],
        [1,0,0,0,1,0,1,0,0,1,0,1],
        [0,1,0,1,1,1,1,0,1,0,1,0],
        [0,1,1,0,1,1,1,1,1,1,1,1],
        [1,1,0,1,1,1,1,0,1,0,0,0],
        [1,0,0,0,0,0,0,1,0,0,0,0],
        [0,0,1,0,1,1,0,0,0,0,1,0],
        [0,0,1,0,0,1,1,0,0,0,1,1],
        [0,0,1,0,0,0,1,0,0,1,1,0],
        [0,0,1,0,0,1,0,0,1,0,1,1],
        [0,1,1,1,1,0,1,0,1,1,0,1],
        [0,1,0,1,1,1,1,1,1,1,0,1],
        [1,0,0,1,0,0,1,1,1,1,0,0],
        [0,0,0,0,1,1,0,0,1,1,0,1],
        [0,1,0,1,0,1,1,0,0,0,0,0],
        [1,1,1,1,0,0,0,1,1,1,0,0],
        [0,1,0,1,1,1,0,0,1,0,1,0],
        [0,0,1,1,0,1,0,1,0,0,1,1],
        [1,1,1,0,1,1,1,0,1,1,1,1],
        [0,0,0,0,0,0,1,1,1,1,0,1],
        [1,0,0,0,0,0,1,1,0,1,1,0],
        [0,1,0,0,0,0,0,0,1,1,0,1],
        [0,1,1,1,1,0,0,0,1,0,1,1],
        [1,1,1,1,0,0,1,1,1,1,0,0],
        [1,0,0,1,0,1,1,1,1,1,1,0],
        [0,0,1,0,0,0,1,1,0,0,1,0],
        [1,0,1,0,1,1,0,1,0,0,0,0],
        [0,0,0,1,0,1,0,0,1,1,1,1],
        [1,0,0,0,0,1,1,0,1,1,0,1],
        [0,1,1,0,1,1,1,1,0,0,0,1],
        [0,1,0,0,1,0,1,1,0,0,1,0],
        [1,1,1,0,1,1,1,1,0,1,1,1],
        [0,0,0,0,0,1,1,1,0,1,1,0],
        [1,0,0,1,1,0,0,1,1,1,1,0],
        [1,0,1,1,0,0,1,1,0,0,1,1],
        [0,1,1,0,1,1,0,1,1,0,1,0],
        [1,0,0,1,0,0,1,0,1,0,1,0],
        [0,1,1,0,1,1,0,0,0,1,1,0],
        [0,0,0,1,0,0,1,0,0,0,1,1],
        [1,0,0,1,0,1,1,0,1,0,0,1],
        [1,0,0,1,1,0,1,1,0,0,0,0],
        [1,0,0,1,0,0,0,1,1,0,0,1],
        [0,0,1,0,1,0,0,1,0,0,0,1],
        [0,0,0,0,0,1,0,1,1,1,0,1],
        [0,1,0,0,1,1,0,1,1,0,1,0],
        [0,1,0,1,0,1,1,0,0,1,0,1],
        [1,1,1,1,0,1,1,1,1,0,1,1],
        [0,1,0,1,0,0,1,1,1,0,1,1],
        [1,1,1,0,0,0,0,0,1,0,0,1],
        [1,0,1,1,0,0,1,1,0,1,0,1],
        [0,1,1,1,1,1,1,0,1,0,1,0],
        [1,1,1,1,1,0,1,1,0,1,1,1],
        [1,1,1,1,1,1,1,1,0,0,0,0],
        [0,1,1,0,0,1,0,0,1,1,0,0],
        [1,1,0,0,0,1,1,0,0,1,0,0],
        [0,0,1,0,0,0,0,0,0,0,1,1],
        [0,0,0,1,1,0,0,0,1,0,1,0],
        [1,1,1,0,0,0,0,1,0,1,0,0],
        [0,1,0,1,0,1,0,0,0,0,0,0],
        [1,0,1,0,0,1,1,0,0,0,0,0],
        [0,0,1,0,1,0,0,1,0,0,1,0],
        [0,1,0,0,0,1,1,0,0,0,0,0],
        [0,0,1,0,0,0,1,0,1,1,1,0],
        [1,1,0,1,1,1,1,0,0,0,0,1],
        [0,0,1,1,1,1,0,0,0,0,1,0],
        [1,0,0,1,1,1,1,1,1,1,0,1],
        [0,1,0,1,1,1,1,0,1,1,1,0],
        [0,0,0,1,1,0,0,0,0,0,1,1],
        [0,1,1,1,0,0,1,1,1,1,0,1],
        [0,0,0,0,1,1,0,0,1,1,1,1],
        [0,1,1,1,0,1,1,0,0,1,1,0],
        [0,1,1,1,1,0,1,1,1,1,1,0],
        [0,0,0,0,1,0,0,0,1,0,1,0],
        [1,1,1,1,0,1,0,0,1,1,0,0],
        [1,0,1,1,0,1,1,1,0,0,1,1],
        [0,0,1,0,0,0,1,0,1,1,1,1],
        [0,0,1,0,1,1,0,0,1,0,0,0],
        [0,1,0,1,1,0,1,0,0,1,0,1],
        [0,0,0,1,1,0,1,1,0,0,1,0],
        [1,0,1,1,0,1,0,0,1,0,0,0],
        [0,1,0,1,0,0,1,0,0,0,0,0],
        [0,0,1,1,1,1,0,1,1,1,1,0],
        [1,1,1,0,0,1,1,1,1,1,1,1],
        [1,1,0,0,1,0,0,1,1,1,0,1],
        [0,1,1,0,1,0,1,1,0,0,0,1],
        [1,0,1,1,0,1,1,1,1,0,1,0],
        [0,1,1,0,0,0,1,1,0,1,1,0],
        [0,1,1,1,0,1,0,1,1,1,1,1],
        [0,0,0,0,1,1,0,0,0,1,1,1],
        [0,1,1,0,1,0,1,0,1,1,0,1],
        [0,1,0,0,0,0,1,0,0,1,1,0],
        [1,1,1,0,0,1,1,0,1,1,1,0],
        [1,0,0,0,0,1,1,1,0,1,0,0],
        [1,1,1,1,0,0,1,1,0,1,1,0],
        [0,0,0,0,0,1,1,0,1,0,1,1],
        [0,1,1,1,1,1,0,0,0,0,1,1],
        [0,1,0,0,0,1,0,1,1,0,0,1],
        [1,0,1,0,1,0,0,0,1,0,0,0],
        [0,0,1,1,0,0,1,1,1,0,0,1],
        [1,0,1,1,1,1,1,1,1,1,1,1],
        [1,0,0,0,0,0,0,0,1,1,0,1],
        [1,1,0,0,1,1,0,0,0,0,0,0],
        [1,1,1,0,0,0,1,0,1,0,1,1],
        [1,1,0,0,0,1,0,1,0,1,1,0],
        [0,1,1,1,0,0,0,1,0,0,0,1],
        [1,1,0,1,1,0,1,0,0,1,1,0],
        [0,0,0,0,1,0,0,1,0,1,0,0],
        [0,0,0,0,0,1,0,0,0,1,0,1],
        [1,1,0,1,1,1,1,0,1,0,1,1],
        [1,0,1,1,1,0,0,1,1,0,1,1],
        [0,1,0,0,1,0,1,1,1,0,0,0],
        [1,1,0,0,0,0,1,0,1,1,0,1],
        [1,1,0,1,0,0,0,1,1,1,0,1],
        [0,0,0,1,1,1,1,1,0,0,0,1],
        [1,1,0,0,0,1,0,0,1,0,1,0],
        [0,1,1,0,0,0,1,1,1,1,1,0],
        [1,0,0,1,1,1,0,1,0,1,1,0],
        [1,1,1,1,0,0,1,1,1,0,0,0],
        [0,0,0,0,1,0,1,0,1,0,0,1],
        [1,1,1,1,0,0,1,0,0,1,0,1],
        [1,0,0,1,1,0,1,1,1,0,0,1],
        [0,0,1,0,0,1,0,1,0,0,0,0],
        [1,0,1,1,1,0,0,0,0,0,1,0],
        [1,1,0,0,1,1,1,1,0,1,0,1],
        [1,0,0,0,1,0,0,1,1,1,0,1],
        [0,1,1,0,0,0,1,0,0,1,0,1],
        [1,0,1,0,1,1,0,0,1,0,0,0],
        [1,0,0,1,1,1,0,1,1,0,0,0],
        [1,1,0,1,0,1,0,1,1,1,1,1],
        [1,1,1,1,0,0,0,1,0,1,1,0],
        [1,1,1,0,0,1,1,0,0,1,1,0],
        [0,0,1,1,1,0,0,0,1,0,0,0],
        [1,1,0,1,1,0,1,0,1,0,0,1],
        [1,1,1,0,0,1,0,1,1,0,1,0],
        [1,0,1,0,1,1,1,0,0,1,0,1],
        [0,0,1,1,0,1,1,0,0,0,0,1],
        [0,0,0,1,1,1,0,0,0,1,1,0],
        [1,1,0,0,0,1,1,1,0,1,1,0],
        [1,1,1,1,0,0,1,0,1,0,1,1],
        [1,0,0,0,1,0,1,0,0,1,0,0],
        [0,0,0,1,0,1,1,1,0,0,0,1],
        [0,1,1,1,0,1,0,0,1,0,0,0],
        [0,0,1,1,1,0,0,0,1,1,0,0],
        [1,0,0,1,0,0,0,0,1,0,1,0],
        [1,0,1,0,1,0,1,0,1,1,1,1],
        [1,0,0,0,1,1,0,1,0,0,1,1],
        [0,1,0,0,0,1,1,1,1,1,0,1],
        [1,0,0,1,0,1,0,0,1,0,0,1],
        [1,1,1,1,1,0,1,0,1,1,1,1],
        [0,1,0,0,1,1,0,0,0,1,0,1],
        [0,0,0,1,1,0,1,1,1,0,1,1],
        [1,0,1,1,0,1,1,0,0,0,1,1],
        [0,0,0,1,1,0,1,1,0,1,1,0],
        [1,0,0,0,0,0,1,1,0,0,0,0],
        [0,0,0,0,0,1,0,0,0,0,0,1],
        [0,1,1,1,1,1,0,1,0,1,1,1],
        [1,1,1,1,1,0,0,1,0,1,0,1],
        [1,1,1,1,0,1,0,1,1,0,1,1],
        [1,0,1,0,1,1,1,1,0,1,1,1],
        [0,0,1,0,0,0,0,1,1,1,1,1],
        [0,1,0,0,1,0,0,1,0,0,0,0],
        [1,1,0,1,1,0,1,1,0,0,1,0],
        [0,0,0,1,1,0,1,0,0,0,0,0],
        [0,1,0,0,1,0,1,1,0,1,0,1],
        [1,1,0,1,1,0,0,0,1,1,1,1],
        [1,0,1,1,1,1,1,0,1,0,0,0],
        [1,1,0,1,0,1,1,1,0,1,0,1],
        [0,0,1,1,0,0,1,1,1,1,1,0],
        [1,0,0,1,0,1,1,0,1,1,1,0],
        [1,0,1,1,1,1,1,1,0,1,0,1],
        [0,0,0,1,1,1,1,0,1,0,0,1],
        [0,0,1,0,1,1,0,1,1,1,1,1],
        [1,1,1,0,1,1,0,0,1,0,1,1],
        [0,0,1,0,0,1,1,0,1,1,0,0],
        [0,1,0,1,0,1,1,1,1,0,1,0],
        [1,1,1,1,1,0,0,0,1,1,0,0],
        [1,0,0,0,1,0,1,1,1,1,0,0],
        [0,1,1,0,0,0,1,1,0,1,1,1],
        [1,1,1,1,1,1,1,0,1,1,0,0],
        [1,0,1,0,0,1,1,0,0,0,0,1],
        [1,1,0,0,0,0,1,1,0,1,1,1],
        [1,0,0,0,1,0,1,0,1,0,0,0],
        [0,1,0,0,1,0,1,0,0,0,1,1],
        [1,0,1,1,1,0,0,1,1,0,0,1],
        [0,1,1,1,0,1,0,0,1,0,0,1],
        [1,1,0,0,0,0,0,0,0,1,1,0],
        [0,0,0,1,1,0,0,0,0,0,1,0],
        [0,0,0,1,1,1,1,1,1,1,0,1],
        [1,1,0,0,0,1,0,0,1,1,0,0],
        [0,0,1,0,0,1,1,0,1,0,1,0],
        [1,0,1,0,1,0,0,1,1,0,1,0],
        [1,0,1,1,0,0,1,1,1,1,0,1],
        [1,1,0,0,1,0,1,0,0,0,1,0],
        [0,0,0,1,0,1,1,1,0,1,0,1],
        [0,0,0,0,0,0,0,1,0,1,0,1],
        [1,0,1,0,1,0,1,1,0,0,0,0],
        [1,0,1,0,1,0,1,1,0,0,0,1],
        [1,0,1,0,0,1,0,0,1,1,0,0],
        [0,1,0,0,0,1,1,0,1,1,1,0],
        [0,1,0,0,1,1,1,1,1,0,0,1],
        [0,1,0,0,1,0,1,1,1,0,1,1],
        [0,0,1,1,1,0,1,1,0,1,0,1],
        [1,0,1,0,0,0,0,0,0,1,1,0],
        [1,0,1,1,1,0,0,0,0,1,0,1],
        [1,1,0,1,1,0,0,0,1,1,0,1],
        [1,0,1,0,0,0,1,0,0,0,0,0],
        [0,1,1,0,0,1,1,0,0,1,1,0],
        [1,0,1,1,1,1,1,0,0,1,1,0],
        [1,1,1,1,1,0,0,0,1,0,1,0],
        [1,1,0,0,1,0,1,0,1,0,1,1],
        [1,0,0,1,1,1,0,0,0,1,1,1],
        [1,1,1,0,0,1,1,1,1,1,0,1],
        [1,0,0,0,0,1,0,1,1,1,1,1],
        [1,0,1,1,0,1,1,0,1,1,1,0],
        [0,1,0,1,0,0,1,0,0,0,1,0],
        [1,1,1,1,0,0,1,1,1,0,1,1],
        [0,0,1,0,1,1,1,0,0,1,1,0],
        [0,0,0,0,0,1,0,1,1,0,1,0],
        [1,0,1,1,1,1,1,0,0,0,1,0],
        [1,1,0,0,0,0,0,0,0,0,0,0],
        [1,1,1,1,0,0,0,1,0,1,0,1],
        [1,1,0,1,0,0,0,0,1,0,0,1],
        [1,0,0,0,1,0,0,1,1,0,1,0],
        [1,1,1,0,0,0,1,1,0,0,1,0],
        [1,0,1,0,0,0,1,1,0,0,1,1],
        [1,1,1,1,0,1,0,1,1,1,1,1],
        [1,0,0,0,1,1,1,1,1,0,1,1],
        [1,0,1,0,0,1,1,0,0,1,1,1],
        [0,1,1,0,1,1,1,1,1,1,0,1],
        [1,1,1,0,1,1,0,1,0,1,1,1],
        [0,1,1,1,0,1,0,1,0,0,1,1],
        [0,1,0,0,1,0,0,0,0,1,1,1],
        [1,1,0,0,1,1,1,1,1,1,0,1],
        [0,1,1,1,0,1,0,1,1,1,0,1],
        [0,1,0,1,0,1,1,0,0,1,1,1],
        [0,1,0,1,1,1,0,0,0,0,0,0],
        [1,0,0,1,1,1,0,0,0,0,0,1],
        [0,0,1,1,1,0,1,0,1,1,0,1],
        [0,0,0,1,1,1,1,0,1,1,1,0],
        [0,0,0,1,0,0,1,1,0,0,0,0],
        [0,0,1,1,1,0,1,1,0,1,1,1],
        [0,1,0,0,0,0,1,1,1,0,1,0],
        [0,0,1,0,1,0,0,0,1,0,0,1],
        [1,0,1,0,0,1,0,0,0,1,1,1],
        [1,1,1,0,1,0,1,0,0,0,1,0],
        [1,1,0,0,0,1,0,0,0,0,1,1],
        [0,1,1,1,1,1,0,1,0,0,0,0],
        [0,0,0,1,1,0,0,1,0,0,0,0],
        [0,0,1,0,0,1,0,1,1,1,1,1],
        [0,0,0,1,0,0,0,1,1,1,1,1],
        [1,1,0,0,0,1,0,1,0,0,1,1],
        [1,1,0,0,0,0,0,1,0,0,1,1],
        [0,0,0,0,1,1,0,1,0,1,0,1],
        [1,0,0,1,0,1,0,0,1,1,1,0],
        [1,0,1,1,1,0,0,1,0,1,0,1],
        [0,0,0,0,1,1,1,1,0,0,0,0],
        [0,1,1,1,1,1,1,0,0,1,1,1],
        [0,0,1,1,1,1,1,0,1,1,0,0],
        [1,0,1,1,1,1,1,0,1,1,0,0],
        [1,0,1,1,1,0,1,1,1,1,0,1],
        [1,1,0,1,1,1,1,1,1,0,0,1],
        [0,1,1,1,1,0,1,1,1,1,0,1],
        [1,1,1,1,1,0,0,1,0,1,1,1],
        [1,0,1,1,1,0,1,0,0,0,0,1],
        [0,0,0,1,1,0,1,0,0,0,1,0],
        [0,1,1,0,0,0,0,0,1,0,0,0],
        [1,1,1,0,0,0,1,1,0,1,0,1],
        [1,0,1,0,0,0,0,1,1,1,0,0],
        [1,0,0,1,1,0,0,1,0,1,0,0],
        [0,0,1,1,1,1,1,1,1,1,1,1],
        [1,1,1,0,0,1,1,1,1,0,0,1],
        [1,1,1,1,1,1,0,0,0,1,1,0],
        [0,0,0,1,1,0,1,0,0,1,0,0],
        [1,1,1,0,0,0,1,1,0,0,0,0],
        [1,1,0,0,1,1,0,1,0,1,1,0],
        [0,0,1,0,1,0,0,1,1,0,0,1],
        [1,0,1,0,0,0,0,1,1,0,1,1],
        [1,0,0,0,1,1,1,1,1,1,1,1],
        [0,1,1,0,0,1,1,0,0,0,0,0],
        [1,1,0,1,0,0,1,0,1,1,0,0],
        [0,0,1,0,0,1,1,1,1,0,0,0],
        [0,0,0,1,0,0,0,0,1,1,0,0],
        [0,1,0,1,0,1,0,0,0,0,0,1],
        [1,0,1,0,1,0,1,1,0,1,1,1],
        [1,0,0,1,1,0,1,0,0,0,0,0],
        [1,0,0,1,1,0,0,0,0,0,1,1],
        [1,1,1,1,0,1,0,0,0,0,1,1],
        [0,0,1,1,0,1,0,0,1,0,1,0],
        [0,0,0,0,0,0,0,1,1,1,1,1],
        [0,0,0,1,0,1,0,0,0,1,1,0],
        [0,0,1,1,1,0,1,1,1,0,0,1],
        [1,0,1,1,1,0,0,0,1,0,1,1],
        [0,0,1,1,1,1,0,1,1,0,1,0],
        [0,0,0,1,0,0,1,1,0,0,1,0],
        [0,1,0,0,1,1,0,1,1,0,0,1],
        [0,1,1,1,0,0,1,0,1,0,0,1],
        [0,1,0,1,1,0,0,1,1,0,0,1],
        [0,0,1,0,1,1,0,0,1,1,0,1],
        [0,1,1,1,1,0,1,0,0,0,1,0],
        [0,1,1,0,0,0,0,1,1,1,0,0],
        [0,0,1,0,0,1,1,1,0,0,1,0],
        [1,0,0,0,0,0,0,0,0,0,1,0],
        [0,1,0,1,1,1,0,1,0,0,1,0],
        [0,0,0,0,1,0,1,0,0,0,0,0],
        [0,1,1,0,0,0,0,1,1,1,1,0],
        [0,1,0,1,0,0,1,1,0,0,1,0],
        [0,1,0,1,0,1,0,1,0,0,0,1],
        [0,1,1,0,1,0,1,0,1,1,0,0],
        [0,0,0,1,0,0,1,0,0,0,0,1],
        [1,1,0,1,0,1,0,0,1,0,1,1],
        [1,1,1,1,1,0,1,1,1,1,0,1],
        [0,1,0,1,0,0,1,0,0,1,1,0],
        [1,1,0,0,1,0,0,0,0,1,0,0],
        [0,0,0,1,0,1,0,1,0,0,0,1],
        [1,1,0,1,0,0,0,0,0,0,0,1],
        [0,0,1,0,1,0,1,0,0,0,1,1],
        [0,1,1,1,0,1,1,0,0,1,0,1],
        [0,1,0,1,0,1,0,1,1,1,1,0],
        [0,1,0,1,0,1,1,1,0,1,0,1],
        [0,1,0,1,0,1,0,1,1,1,0,0],
        [0,1,0,0,1,1,0,0,1,0,1,0],
        [0,1,0,0,1,1,1,1,0,0,0,1],
        [1,1,1,1,1,1,1,0,0,0,0,0],
        [0,1,1,1,1,0,1,1,1,0,1,0],
        [1,1,0,0,1,0,1,0,1,0,1,0],
        [0,0,1,1,1,1,0,1,0,0,0,1],
        [1,1,1,1,1,0,1,1,1,1,1,0],
        [1,1,0,0,0,1,0,1,0,1,0,1],
        [0,0,1,0,1,1,0,1,0,0,0,1],
        [1,1,0,1,1,1,0,0,0,1,1,0],
        [0,0,0,0,1,1,0,1,0,0,1,1],
        [0,0,0,0,0,1,1,0,1,0,0,1],
        [0,1,1,0,1,0,1,0,0,1,0,0],
        [1,0,0,0,0,0,0,1,0,1,1,1],
        [0,0,0,0,0,0,1,0,0,0,0,1],
        [1,1,0,0,0,0,1,1,0,0,1,0],
        [0,0,1,1,0,1,1,1,1,1,0,1],
        [1,0,1,0,1,1,1,1,1,1,1,1],
        [1,0,0,1,0,0,1,0,0,0,1,0],
        [0,0,0,0,0,1,1,1,0,1,1,1],
        [0,0,1,1,1,1,1,1,0,1,0,1],
        [0,0,1,1,1,1,0,0,0,0,1,1],
        [1,0,1,0,0,0,1,1,1,1,0,0],
        [1,0,0,1,0,0,1,0,1,1,1,1],
        [1,1,1,0,0,0,0,0,0,1,0,1],
        [0,0,0,0,1,1,1,0,0,0,1,1],
        [1,1,0,1,0,1,1,0,0,0,1,0],
        [1,1,0,0,0,1,0,1,0,1,1,1],
        [0,1,1,0,0,0,1,1,1,1,0,0],
        [0,1,0,0,0,0,0,1,1,1,1,1],
        [0,0,0,0,0,1,0,1,1,0,0,0],
        [1,1,0,0,1,1,1,0,0,0,0,0],
        [1,1,1,1,0,0,1,0,0,1,1,1],
        [0,0,0,0,1,0,0,0,1,0,1,1],
        [1,0,0,1,1,1,1,0,1,0,0,1],
        [0,1,1,1,1,1,1,0,0,0,0,0],
        [1,0,1,1,0,1,1,1,1,0,0,1],
        [1,0,1,1,0,0,1,0,1,1,0,0],
        [0,0,1,0,0,0,1,1,0,1,0,0],
        [1,1,1,1,1,1,0,1,0,1,1,1],
        [0,0,0,1,1,0,0,0,1,1,0,1],
        [0,1,1,1,1,1,1,0,0,0,0,1],
        [1,1,1,0,0,0,0,0,1,1,0,0],
        [0,0,0,1,1,1,1,0,0,1,0,0],
        [0,0,1,1,1,1,0,0,0,0,0,0],
        [0,0,0,1,0,1,1,1,0,0,1,0],
        [1,0,1,1,0,0,0,1,1,0,0,1],
        [0,0,0,0,0,1,0,0,0,1,0,0],
        [0,0,1,0,0,1,0,0,1,1,0,1],
        [1,1,1,0,0,1,0,1,0,1,0,1],
        [0,0,0,0,1,1,1,1,1,0,1,1],
        [0,1,1,1,1,1,1,1,0,0,0,0],
        [0,0,0,0,0,0,1,1,0,0,0,1],
        [1,0,0,1,1,1,1,1,0,0,1,1],
        [1,0,1,0,0,1,0,0,1,0,1,1],
        [1,0,1,0,0,0,1,1,0,1,1,0],
        [1,1,1,0,0,1,0,1,0,1,0,0],
        [0,0,0,0,1,1,1,1,0,1,0,0],
        [0,1,0,0,0,1,1,0,0,0,0,1],
        [0,0,1,1,1,1,0,0,1,1,1,0],
        [1,0,0,0,0,1,1,0,1,0,0,1],
        [0,0,0,0,0,1,1,0,1,1,1,1],
        [1,0,1,0,0,0,0,0,0,0,0,1],
        [1,1,1,1,0,1,0,1,0,0,0,0],
        [0,1,1,1,1,1,0,1,1,0,0,1],
        [1,1,1,1,1,1,0,1,1,1,1,0],
        [1,1,0,1,1,0,0,1,0,1,1,0],
        [0,0,1,0,1,1,1,0,1,1,0,0],
        [1,0,0,0,0,1,0,1,0,1,1,1],
        [1,0,1,0,1,1,0,1,1,1,0,0],
        [1,1,0,0,1,0,1,0,1,0,0,1],
        [0,0,1,0,0,0,0,0,1,1,0,0],
        [0,0,1,1,0,1,0,1,0,1,0,1],
        [1,1,1,1,1,1,1,1,1,1,1,0],
        [0,0,1,1,0,0,1,0,0,0,1,1],
        [1,1,0,0,0,0,1,1,0,1,1,0],
        [0,0,0,0,0,0,0,0,0,1,1,0],
        [1,0,1,0,0,0,0,0,1,0,1,0],
        [0,0,1,1,1,1,0,0,1,1,0,0],
        [1,0,0,0,1,1,1,1,0,0,0,1],
        [1,1,1,0,1,1,0,0,0,0,0,1],
        [0,1,1,0,1,0,1,0,0,1,1,0],
        [0,1,1,1,1,0,1,0,0,1,0,0],
        [0,0,1,1,1,0,0,1,1,1,1,1],
        [0,1,0,1,0,1,1,0,1,0,1,1],
        [0,1,0,1,1,0,0,1,0,1,1,1],
        [1,0,1,1,0,0,1,1,0,1,1,0],
        [0,0,0,1,0,1,1,0,0,0,1,0],
        [1,1,0,0,1,0,0,1,0,0,0,0],
        [0,1,0,1,0,0,0,1,0,0,0,0],
        [1,1,1,0,1,1,0,0,0,1,1,1],
        [0,1,1,0,1,0,1,1,1,0,1,1],
        [1,0,0,0,0,0,1,0,0,1,1,1],
        [0,0,1,1,1,1,0,1,1,0,0,0],
        [0,0,1,0,1,0,1,1,1,0,1,1],
        [0,0,0,0,1,0,1,1,1,1,1,1],
        [1,1,0,0,0,1,0,0,0,1,0,1],
        [0,0,0,1,1,1,0,1,0,1,0,1],
        [0,1,0,0,1,1,1,1,0,1,1,1],
        [1,1,1,0,1,0,1,1,0,0,0,0],
        [1,0,0,1,1,1,1,1,0,1,1,0],
        [1,0,1,0,1,1,0,1,0,0,0,1],
        [0,1,1,0,0,1,1,1,1,1,1,1],
        [1,1,0,1,1,0,1,0,0,0,1,0],
        [1,1,0,1,1,1,1,1,0,1,1,0],
        [0,1,1,0,1,0,1,1,0,1,1,1],
        [1,1,1,0,0,0,1,0,0,0,1,1],
        [1,0,0,0,1,0,0,1,1,0,0,0],
        [1,1,1,0,0,1,0,0,0,0,1,0],
        [0,0,0,1,0,0,0,0,0,1,1,1],
        [0,1,1,1,0,1,0,0,1,0,1,0],
        [1,1,1,0,0,1,0,0,0,1,1,1],
        [0,0,0,1,1,0,0,1,0,1,0,0],
        [0,1,1,0,1,1,0,1,0,1,1,0],
        [1,0,0,1,0,0,1,1,0,1,0,0],
        [0,1,0,0,1,1,0,0,0,0,0,1],
        [1,0,1,0,0,0,1,1,1,0,1,1],
        [1,0,0,1,0,0,0,0,0,0,0,0],
        [0,1,0,0,1,0,1,0,1,1,1,0],
        [0,1,1,1,1,1,0,0,1,1,0,1],
        [0,0,1,1,0,0,0,0,1,1,0,0],
        [0,1,0,1,1,1,1,0,0,0,0,1],
        [1,0,0,1,0,1,1,0,1,0,1,0],
        [1,0,0,1,1,0,0,0,1,1,0,1],
        [0,1,0,1,1,1,0,0,0,1,0,1],
        [0,1,0,1,0,0,0,1,1,0,1,1],
        [0,0,0,0,1,0,0,0,0,0,1,1],
        [1,1,1,0,0,0,1,1,1,1,1,1],
        [1,0,0,1,1,1,0,1,1,1,0,0],
        [1,1,1,1,1,0,0,1,1,0,1,1],
        [0,1,1,1,1,0,1,1,0,1,1,0],
        [0,0,1,0,0,0,0,0,1,1,1,1],
        [1,0,0,1,1,0,1,1,0,1,1,1],
        [1,0,0,0,0,0,0,0,1,0,1,1],
        [0,0,1,1,1,1,0,0,1,0,1,1],
        [0,1,0,0,1,0,1,1,1,1,0,1],
        [0,1,0,0,0,1,1,1,1,0,0,0],
        [1,1,0,0,1,0,1,1,0,1,0,1],
        [0,1,1,0,0,1,1,0,0,1,0,1],
        [1,0,0,1,1,0,0,0,1,1,1,1],
        [1,1,0,0,0,1,1,0,1,0,1,0],
        [0,0,0,1,0,0,1,0,1,0,1,1],
        [1,0,1,1,1,0,1,1,1,0,1,0],
        [0,1,1,1,1,1,1,0,0,0,1,1],
        [1,0,1,0,1,0,1,1,1,1,1,1],
        [0,1,1,1,0,1,1,0,0,0,0,1],
        [1,0,0,0,0,0,0,0,1,0,1,0],
        [0,1,0,0,0,0,0,0,1,0,0,0],
        [1,1,0,1,1,0,0,0,1,0,1,0],
        [1,1,0,0,0,1,0,1,0,0,1,0],
        [1,0,1,0,0,1,1,1,1,0,0,1],
        [0,0,0,1,0,0,0,0,1,1,0,1],
        [1,1,1,1,0,0,0,0,1,1,1,1],
        [1,1,1,1,0,1,0,0,0,1,1,0],
        [0,0,1,0,1,0,1,1,1,0,0,1],
        [0,0,0,1,0,1,0,1,1,0,1,0],
        [1,0,1,0,0,1,0,1,0,0,1,0],
        [1,0,1,0,1,1,1,1,0,0,0,1],
        [0,1,1,0,1,1,1,1,0,1,0,1],
        [1,1,0,1,0,1,1,1,0,1,0,0],
        [0,0,0,0,0,1,1,1,1,0,0,1],
        [1,1,1,0,0,0,0,0,1,1,1,1],
        [1,0,1,1,1,0,1,1,0,0,0,0],
        [0,0,1,1,0,1,1,1,0,1,0,1],
        [0,1,1,0,1,0,1,1,0,0,1,0],
        [1,0,1,0,0,0,0,0,1,1,1,0],
        [1,0,0,0,1,1,1,1,1,0,0,1],
        [0,0,0,1,1,1,0,1,1,1,0,1],
        [1,1,0,0,1,1,0,1,0,1,0,1],
        [0,1,0,1,1,1,1,0,1,1,0,1],
        [0,0,0,0,1,0,1,1,1,0,1,1],
        [0,0,0,1,0,0,1,0,1,0,1,0],
        [1,0,0,1,0,1,1,0,0,1,0,1],
        [1,0,0,0,0,0,0,1,1,0,0,1],
        [0,1,0,1,1,0,1,1,0,1,0,0],
        [0,1,1,0,1,0,1,0,0,0,0,0],
        [0,1,0,1,0,0,0,1,0,0,0,1],
        [1,1,0,0,1,0,1,0,0,1,0,1],
        [0,1,0,1,0,0,1,1,1,1,1,0],
        [0,1,1,1,0,0,0,1,1,1,0,1],
        [1,0,0,0,1,1,1,1,0,0,1,0],
        [1,0,1,0,0,0,0,0,0,0,1,0],
        [0,1,1,0,0,1,1,0,0,0,0,1],
        [1,1,1,1,1,1,1,0,0,1,0,0],
        [0,1,0,0,1,1,0,0,0,0,1,1],
        [0,0,1,1,0,1,0,1,0,0,1,0],
        [1,1,1,1,0,0,1,0,0,0,0,0],
        [1,1,0,1,0,1,1,0,1,1,1,1],
        [1,0,1,0,0,1,1,1,0,0,0,1],
        [1,0,1,1,0,0,1,1,1,1,1,1],
        [0,1,0,1,1,1,1,1,0,0,1,0],
        [1,0,0,0,1,1,0,0,0,1,0,0],
        [1,0,1,1,0,1,0,0,1,1,0,1],
        [0,0,0,0,0,0,1,0,1,0,0,1],
        [1,1,0,1,0,0,1,1,0,0,0,0],
        [0,0,0,1,1,0,0,1,0,0,1,0],
        [1,0,0,1,1,1,0,0,1,1,1,0],
        [1,1,0,0,1,1,1,0,0,1,1,0],
        [0,1,0,1,1,0,1,0,0,0,1,0],
        [0,0,0,1,1,1,0,1,0,1,0,0],
        [0,0,1,1,0,1,0,0,0,0,0,1],
        [1,1,1,0,1,0,0,0,0,0,1,1],
        [0,1,1,0,0,1,0,1,0,1,1,0],
        [1,0,1,0,0,0,1,0,0,0,1,0],
        [1,1,1,0,1,0,0,0,1,0,0,1],
        [0,1,0,1,0,1,1,0,0,0,0,1],
        [0,1,1,0,0,1,1,1,0,0,1,0],
        [0,0,0,1,1,1,0,0,0,1,1,1],
        [1,1,0,0,0,1,0,1,0,0,0,1],
        [0,0,0,1,1,1,0,1,0,0,0,1],
        [0,0,0,0,0,1,1,1,1,1,0,0],
        [0,1,0,0,0,1,0,0,0,0,0,1],
        [1,0,0,1,1,0,0,0,0,0,1,0],
        [1,1,1,1,1,1,0,0,0,1,1,1],
        [1,1,0,1,1,1,0,0,1,1,1,1],
        [0,1,0,0,1,0,0,0,1,0,0,1],
        [0,0,1,0,0,1,1,0,1,1,1,1],
        [0,0,0,1,1,0,1,0,1,1,1,1],
        [1,1,0,0,1,1,0,1,1,1,1,1],
        [1,0,0,0,1,0,1,0,0,1,1,1],
        [0,0,1,0,1,0,0,0,0,0,1,0],
        [0,0,0,0,0,0,1,1,0,1,1,0],
        [1,1,1,1,1,1,1,1,1,1,0,1],
        [0,1,1,1,1,1,1,0,1,1,1,1],
        [1,0,0,1,1,1,1,0,1,1,1,1],
        [1,1,1,1,1,1,1,1,0,1,1,1],
        [1,0,1,1,1,1,0,1,1,0,0,1],
        [1,1,1,0,1,0,1,1,1,0,1,1],
        [0,0,1,0,0,1,1,1,1,1,1,0],
        [0,0,0,0,1,0,0,0,1,1,0,0],
        [1,1,1,0,1,1,0,0,1,1,1,1],
        [1,1,1,1,1,1,1,0,0,0,1,1],
        [1,0,0,0,1,0,0,1,0,0,1,1],
        [1,0,1,1,1,0,1,0,1,0,1,1],
        [1,1,1,0,1,0,1,1,1,1,1,1],
        [0,0,1,1,1,1,0,0,0,1,1,0],
        [1,1,0,0,0,0,0,0,1,1,0,0],
        [1,0,0,1,1,0,1,0,0,1,1,0],
        [0,0,1,1,1,0,0,0,1,1,0,1],
        [0,0,1,0,0,0,1,1,1,1,0,0],
        [0,1,0,0,1,1,0,0,0,1,1,0],
        [0,1,1,0,1,1,0,1,1,1,0,0],
        [1,1,0,1,1,0,0,1,1,0,0,1],
        [0,0,1,0,0,0,1,1,1,0,1,0],
        [1,0,1,1,0,0,0,0,0,0,1,1],
        [1,1,0,1,0,0,1,1,1,1,0,1],
        [0,1,1,1,0,0,0,0,1,0,1,1],
        [0,1,1,1,0,1,0,0,0,1,0,0],
        [0,1,1,1,0,0,0,1,0,0,1,1],
        [1,0,1,0,0,1,0,0,0,0,0,1],
        [0,0,0,0,0,1,1,0,1,0,1,0],
        [1,1,0,0,0,0,0,0,1,0,1,0],
        [0,1,0,1,0,0,0,1,0,1,0,0],
        [1,0,1,0,0,1,1,0,0,1,1,0],
        [0,0,0,1,0,0,1,0,0,1,0,1],
        [0,0,1,0,0,0,1,1,1,1,0,1],
        [1,0,1,1,0,1,0,1,1,1,1,1],
        [0,1,1,0,0,1,0,0,0,0,1,0],
        [1,0,1,0,0,0,1,0,0,0,0,1],
        [1,1,1,1,1,0,1,0,0,0,1,1],
        [1,1,1,1,0,1,0,1,0,0,1,0],
        [1,1,0,1,1,1,0,1,0,1,0,1],
        [0,1,0,1,1,1,1,1,0,1,0,0],
        [0,1,0,0,0,1,0,1,0,0,0,1],
        [0,1,0,1,1,0,0,1,1,1,1,0],
        [1,0,1,0,0,1,0,1,0,0,0,1],
        [1,0,0,1,1,0,1,1,1,1,0,0],
        [1,1,0,0,1,1,1,0,0,0,1,0],
        [0,1,0,1,1,0,0,0,1,0,1,1],
        [1,1,0,0,0,1,0,0,1,1,0,1],
        [0,0,1,1,0,0,1,0,0,1,1,1],
        [0,0,1,0,0,1,0,0,1,1,1,1],
        [0,1,1,0,0,0,1,1,0,1,0,0],
        [0,0,0,0,1,0,0,1,0,0,0,1],
        [1,0,1,0,1,0,1,0,1,1,1,0],
        [1,1,1,1,0,0,1,1,1,1,1,1],
        [0,0,0,0,1,0,1,0,0,0,1,0],
        [0,1,1,0,1,0,1,1,1,1,0,1]
    ]
}