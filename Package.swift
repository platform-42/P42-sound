// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "P42-sound",
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
