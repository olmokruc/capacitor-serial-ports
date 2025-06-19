// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MicrosensorySerialPorts",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MicrosensorySerialPorts",
            targets: ["SerialPortsPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "SerialPortsPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/SerialPortsPlugin"),
        .testTarget(
            name: "SerialPortsPluginTests",
            dependencies: ["SerialPortsPlugin"],
            path: "ios/Tests/SerialPortsPluginTests")
    ]
)