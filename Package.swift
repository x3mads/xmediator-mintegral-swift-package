// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorMintegral",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorMintegral", targets: ["XMediatorMintegralTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.7"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorMintegral/XMediatorMintegral-8.1.7.0.zip",
            checksum: "fe77b4fbb0657de71db38cc3fe49d6e91757409a5b4cf72bf1c649c24fab4fd1"
        ),
    ]
)
