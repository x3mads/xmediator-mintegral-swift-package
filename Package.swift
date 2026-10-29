// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorMintegral",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorMintegral", targets: ["XMediatorMintegralTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.8"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.145.0")),
    ],
    targets: [
        .target(
            name: "XMediatorMintegralTarget",
            dependencies: [
                .target(name: "XMediatorMintegral"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
            ],
            path: "XMediatorMintegralTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorMintegral",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorMintegral/XMediatorMintegral-8.1.8.0.zip",
            checksum: "2c886bc9c4a0791f45b7b54dd4a8c6829916908d8ccca24436c937554e730315"
        ),
    ]
)
