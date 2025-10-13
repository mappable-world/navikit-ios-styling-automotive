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
        .package(url: "https://github.com/mappable-world/navikit-ios", exact: "4.17.1"),
    ],
    targets: [
        .binaryTarget(
            name: "MMKStylingAutomotiveNavigation",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MMKStylingAutomotiveNavigation-4.17.1.framework.zip",
            checksum: "5ecb47ab76401b3cb1105bb5b5a4f44e348235abdc4e9fc29639f87907f5a2cb"
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
