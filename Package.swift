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
        .package(url: "https://github.com/mappable-world/navikit-ios", exact: "4.22.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MMKStylingAutomotiveNavigation",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MMKStylingAutomotiveNavigation-4.22.0.framework.zip",
            checksum: "ba8350a9b853d9f443578c8c3041a2cbaf438104ba407c233873095a0a7f1f21"
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
