// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "P42-sound",
    platforms: [
        .iOS(.v17),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "P42-sound",
            targets: ["P42-sound"]),
    ],
    targets: [
        .target(
            name: "P42-sound"),
        .testTarget(
            name: "P42-soundTests",
            dependencies: ["P42-sound"]),
    ]
)
