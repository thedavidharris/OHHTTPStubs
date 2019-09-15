// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "OHHTTPStubs",
    platforms: [
        .iOS(.v11), .macOS(.v10_10), .watchOS(.v2), .tvOS(.v9)
    ],
    products: [
        .library(
            name: "OHHTTPStubs",
            targets: [
                "OHHTTPStubsCore",
            ]
        ),
        .library(
            name: "OHHTTPStubsSwift",
            targets: [
                "OHHTTPStubsCore",
                "OHHTTPStubsSwift"
            ]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OHHTTPStubsCore",
            dependencies: []),
        .testTarget(
            name: "OHHTTPStubsCoreTests",
            dependencies: ["OHHTTPStubsCore"]),
        .target(
            name: "OHHTTPStubsSwift",
            dependencies: ["OHHTTPStubsCore"]),
        .testTarget(
            name: "OHHTTPStubsSwiftTests",
            dependencies: ["OHHTTPStubsSwift", "OHHTTPStubsCore"]
        )
    ]
)
