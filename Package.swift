// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoggingOSLog",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "LoggingOSLog",
            targets: ["LoggingOSLog"]),
    ],
    dependencies: [
        .package(url: "https://github.com/shaps80/Logging.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "LoggingOSLog",
            dependencies: [
                "Logging"
            ]
        )
    ]
)
