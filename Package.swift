// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppLocker",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppLocker",
            targets: ["AppLocker"]),
    ],
    dependencies: [
        .package(
            name: "Valet",
            url: "https://github.com/Square/Valet",
            from: "4.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AppLocker",
            dependencies: ["Valet"]),
        .testTarget(
            name: "AppLockerTests",
            dependencies: ["AppLocker", "Valet"]),
    ]
)
