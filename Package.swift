// swift-tools-version:5.8
// swiftformat:disable all
import PackageDescription

let package = Package(
    name: "NSpryNimble",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(name: "NSpryNimble", targets: ["NSpryNimble"])
    ],
    dependencies: [
        .package(url: "https://github.com/NikSativa/NSpry.git", .upToNextMajor(from: "2.1.0")),
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "7.0.1")),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "12.0.1"))
    ],
    targets: [
        .target(name: "NSpryNimble",
                dependencies: [
                    "NSpry",
                    "Nimble"
                ],
                path: "Source"
               ),
        .testTarget(name: "NSpryNimbleTests",
                    dependencies: [
                        "NSpry",
                        "NSpryNimble",
                        "Nimble",
                        "Quick"
                    ],
                    path: "Tests"
                   )
    ]
)
