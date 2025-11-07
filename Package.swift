// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HelloKit",
    platforms: [
           .iOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "HelloKit",
            targets: ["HelloKit"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "HelloKit",
            dependencies: [.target(name: "HelloKitBinary")]),
        .binaryTarget(
                   name:"HelloKitBinary",
                   path: "Sources/libs/HelloKitBinary.xcframework"
               ),
        .testTarget(
            name: "HelloKitTests",
            dependencies: ["HelloKit"]
        ),
    ]
)
