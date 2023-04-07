// swift-tools-version:5.6
// swiftformat:disable all
import PackageDescription

let package = Package(
    name: "NSpryNimble",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "NSpryNimble", targets: ["NSpryNimble"])
    ],
    dependencies: [
        .package(url: "https://github.com/NikSativa/NSpry.git", .upToNextMajor(from: "2.0.2")),
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "6.1.0")),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "11.2.1"))
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
