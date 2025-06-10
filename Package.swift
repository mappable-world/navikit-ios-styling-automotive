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
        .package(url: "https://github.com/mappable-world/navikit-ios", exact: "4.17.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MMKStylingAutomotiveNavigation",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MMKStylingAutomotiveNavigation-4.17.0.framework.zip",
            checksum: "b3b3cc93b05fdc503ba51e30053a72c505b7399b1b16fe2214758c253ff0cb26"
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
