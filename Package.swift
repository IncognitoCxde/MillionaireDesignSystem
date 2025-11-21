// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "MillionaireDesignSystem",
    
    platforms: [
        .iOS(.v16),
        .macOS(.v10_15),
    ],
    
    products: [
        .library(
            name: "DesignSystem",
            targets: ["DesignSystem"]
        ),
    ],
    
    targets: [
        .target(
            name: "DesignSystem",
            dependencies: [
                
            ],
            path: "Sources/DesignSystem",
            resources: [
                .process("Resources"),
            ]
        ),
    ]
)
