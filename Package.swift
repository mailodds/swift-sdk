// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "MailOdds",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v4),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "MailOdds",
            targets: ["MailOdds"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable.git", from: "0.6.7"),
    ],
    targets: [
        .target(
            name: "MailOdds",
            dependencies: [.product(name: "AnyCodable", package: "AnyCodable")],
            path: "Sources/MailOdds"
        ),
    ],
    swiftLanguageModes: [.v5]
)
