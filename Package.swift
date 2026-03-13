// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "P42Sound",
    platforms: [
        .iOS(.v17),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "P42Sound",
            targets: ["P42Sound"]),
    ],
    targets: [
        .target(
            name: "P42Sound")
    ]
)
