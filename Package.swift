// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "MMKStylingAutomotiveNavigation",
    defaultLocalization: "en",
    platforms: [.iOS("12.0")],
    products: [
        .library(
            name: "MMKStylingAutomotiveNavigation",
            type: .static,
            targets: [
                "MMKStylingAutomotiveNavigation",
                "MMKStylingAutomotiveNavigationResources"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/mappable-world/navikit-ios", exact: "4.26.1"),
    ],
    targets: [
        .binaryTarget(
            name: "MMKStylingAutomotiveNavigation",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MMKStylingAutomotiveNavigation-4.26.1.framework.zip",
            checksum: "9f59b0e45c920374559a45c0281632bf5260f3cd4cac0cd830b8cb8df96c43e2"
        ),
        .target(
            name: "MMKStylingAutomotiveNavigationResources",
            dependencies: [
                .product(name: "MappableMobileNavikit", package: "navikit-ios"),
            ],
            path: "Resources",
            resources: [.process("Contents")]
        )
    ]
)
