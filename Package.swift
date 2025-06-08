// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AppleMobileDeviceLibrary",
    platforms: [
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "AppleMobileDeviceLibrary",
            targets: ["AppleMobileDeviceLibrary"]
        ),
    ],
    dependencies: [
        .package(name: "OpenSSL", url: "https://github.com/Lakr233/openssl-spm.git", from: "3.2.0"),
    ],
    targets: [
        .target(name: "AppleMobileDeviceLibrary", dependencies: [
            "libimobiledevice",
            "libimobiledevice_glue",
            "libplist",
            "libusbmuxd",
            "libtatsu",
            "OpenSSL",
        ]),
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3FC861A-1379-4FE0-959D-07D401B7BCAF/libimobiledevice.xcframework.zip", checksum: "e0f0b75e1ad7b38d3c7801a3161e3fddb91d8fffa5935f392d862b7c59dd4674"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3FC861A-1379-4FE0-959D-07D401B7BCAF/libimobiledevice_glue.xcframework.zip", checksum: "a40dc8db41ab34d3b303dfb3f44342c93a6deb3f9abb534d6382e658d220a319"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3FC861A-1379-4FE0-959D-07D401B7BCAF/libplist.xcframework.zip", checksum: "fc4c68ee5ef0191d19e1c4cdb7184ac1ce89dfd2d768801e69fb040f57163139"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3FC861A-1379-4FE0-959D-07D401B7BCAF/libtatsu.xcframework.zip", checksum: "8880f475947acaa78b8bdf9cfccb433353c684d528f1d3f0586b992dae1459fa"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3FC861A-1379-4FE0-959D-07D401B7BCAF/libusbmuxd.xcframework.zip", checksum: "b464c06dcaa0c4353df6813e396b844019e0668b04250d8d4f5fc2adfd395353"),
    ]
)

