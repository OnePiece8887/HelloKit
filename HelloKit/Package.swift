// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HelloKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "HelloKit",
            targets: ["HelloKit","MySDK","HelloKitTests"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "HelloKit"),
        .binaryTarget(
                   name:"MySDK",
                   url:"https://github.com/OnePiece8887/HelloKit/blob/main/releases/download/1.0.0/HelloKitBinary.xcframework.zip",
                   checksum:"7be068b53331929caeb0b1336f1e4f2e72b63980ffbb386eccf9386de7e36346"
               ),
        .testTarget(
            name: "HelloKitTests",
            dependencies: ["HelloKit"]
        ),
    ]
)
