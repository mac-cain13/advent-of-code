// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AoC2022",
    platforms: [
        .macOS(.v13)
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "AoC2022",
            dependencies: [],
            resources: [
                .copy("Input"),
            ]),
        .testTarget(
            name: "AoC2022Tests",
            dependencies: ["AoC2022"],
            resources: [
                .copy("Input"),
            ]),
    ]
)
