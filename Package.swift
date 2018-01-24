// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "ESGISimpleCoreData",
    products: [
        .library(name: "ESGISimpleCoreData", targets: ["ESGISimpleCoreData"])
    ],
    targets: [
        .target(name: "ESGISimpleCoreData"),
        .testTarget(
            name: "ESGISimpleCoreDataTests",
            dependencies: [
                "ESGISimpleCoreData"
            ]
        )
    ]
)
