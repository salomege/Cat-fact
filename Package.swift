// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CatFactsPackage",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "CatFactsPackage",
            targets: ["CatFactsPackage"]),
    ],
    targets: [
        .target(
            name: "CatFactsPackage",
            dependencies: []),
        .testTarget(
            name: "CatFactsPackageTests",
            dependencies: ["CatFactsPackage"]),
    ])
