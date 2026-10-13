// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "intelligence",
    platforms: [
        .iOS("13.0"),
    ],
    products: [
        .library(name: "intelligence", targets: ["intelligence"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", .upToNextMinor(from: "0.16.0")),
    ],
    targets: [
        .target(
            name: "intelligence",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "SQLite", package: "SQLite.swift"),
            ]
        )
    ]
)
