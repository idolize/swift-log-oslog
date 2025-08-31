// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoggingOSLog",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14),
        .macOS(.v11),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "LoggingOSLog",
            targets: ["LoggingOSLog"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.6.3")
    ],
    targets: [
        .target(
            name: "LoggingOSLog",
            dependencies: [
                .product(name: "Logging", package: "swift-log")
            ]
        )
    ],

    swiftLanguageModes: [.v5]
)
