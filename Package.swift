// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CTAnalytics",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14),
        .macOS(.v11),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "CTAnalytics",
            targets: ["CTAnalytics"]
        )
    ],
    targets: [
        .target(
            name: "CTAnalytics",
            dependencies: []
        ),
        .testTarget(
            name: "CTAnalyticsTests",
            dependencies: ["CTAnalytics"]
        )
    ]
)
