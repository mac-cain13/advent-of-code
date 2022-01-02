import Foundation

let targetX = 269 ... 292
let targetY = -68 ... -44

func maxY(velocity: (x: Int, y: Int), position: (x: Int, y: Int) = (0, 0), currentMaxY: Int = 0) -> Int? {
    // Position within target area, HIT!
    if targetX.contains(position.x) && targetY.contains(position.y) { return currentMaxY }

    // If we're past the target, we missed
    if position.x > targetX.upperBound || position.y < targetY.lowerBound { return nil }

    // Simulate the next step
    return maxY(velocity: (max(0, velocity.x-1), velocity.y-1),
                position: (position.x + velocity.x, position.y + velocity.y),
                currentMaxY: max(currentMaxY, position.y + velocity.y))
}

let maxYs = (targetY.lowerBound...100).flatMap { yVelocity in
    (0...targetX.upperBound)
        .compactMap { xVelocity in maxY(velocity: (xVelocity, yVelocity)) }
}

// Part 1
maxYs.max()

// Part 2
maxYs.count
