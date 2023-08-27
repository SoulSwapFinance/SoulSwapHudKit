// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "SoulSwapHudKit",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "SoulSwapHudKit",
                    targets: ["SoulSwapHudKit"]),
        ],
        dependencies: [
            .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
            .package(url: "https://github.com/SoulSwapFinance/SoulSwapThemeKit.git", .upToNextMajor(from: "2.0.0")),
            .package(url: "https://github.com/horizontalsystems/UIExtensions.Swift.git", .upToNextMajor(from: "1.0.0")),
        ],
        targets: [
            .target(
                    name: "SoulSwapHudKit",
                    dependencies: [
                        "SnapKit",
                        .product(name: "SoulSwapThemeKit", package: "SoulSwapThemeKit"),
                        .product(name: "UIExtensions", package: "UIExtensions.Swift"),
                    ]
            ),
        ]
)
