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
        .package(url: "https://github.com/mappable-world/navikit-ios", exact: "4.23.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MMKStylingAutomotiveNavigation",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MMKStylingAutomotiveNavigation-4.23.0.framework.zip",
            checksum: "d7425274e2644c5921ceed8808aaba8832ddb129972462d9d02669c642854603"
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
