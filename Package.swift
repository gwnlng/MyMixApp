// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let dependencies: [Package.Dependency] = [
  .package(
    url: "https://github.com/apple/swift-collections.git",
    from: "1.1.3"
  ),
  .package(
    url: "https://github.com/Alamofire/Alamofire.git",
    from: "5.4.0"
  ),
]

let package = Package(
    name: "MyMixApp",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyMixApp",
            targets: ["MyMixApp"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyMixApp"),
        .testTarget(
            name: "MyMixAppTests",
            dependencies: ["MyMixApp"]
        ),
    ]
)
