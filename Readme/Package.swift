// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "Readme",
    platforms: [.macOS(.v10_12)],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.4.0")),
        .package(url: "https://github.com/nmdias/FeedKit.git", .exact("9.1.2"))
    ],
    targets: [
        .executableTarget(name: "Readme", dependencies: ["FeedKit", .product(name: "ArgumentParser", package: "swift-argument-parser")]),
    ]
)
