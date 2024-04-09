// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "ClusterKit",
    platforms: [
        .macOS(.v10_15), .iOS(.v9), .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ClusterKit",
            targets: ["ClusterKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/maplibre/maplibre-gl-native-distribution", .upToNextMinor(from: "5.13.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ClusterKit",
            dependencies: [.product(name: "Mapbox", package: "maplibre-gl-native-distribution")]
        ),
    ]
)
