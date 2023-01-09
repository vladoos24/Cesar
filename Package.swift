// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Cesar",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "Cesar",
            targets: ["Cesar"]
        )
    ],
    targets: [
        .target(
            name: "Cesar",
            path: "Cesar"
        )
    ],
    swiftLanguageVersions: [.v5]
)
