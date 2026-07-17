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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1B6B59A0-5021-4D45-9018-C8FC0B34CD9F/libimobiledevice.xcframework.zip", checksum: "273b1ca2bc53622a057e67f629b9d0fcf79c021f15b06105451d57082ae3e9a0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1B6B59A0-5021-4D45-9018-C8FC0B34CD9F/libimobiledevice_glue.xcframework.zip", checksum: "36a9e5fc1c38d8487bf5228137fedc00110a3881d658490debeca25562a7d2f8"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1B6B59A0-5021-4D45-9018-C8FC0B34CD9F/libplist.xcframework.zip", checksum: "85bbb6cebecfe07b2e15a7ea26b85d136fdb335573d3314c53646b53a52dcab4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1B6B59A0-5021-4D45-9018-C8FC0B34CD9F/libtatsu.xcframework.zip", checksum: "27eeacc61ddbf3c892b0e398a88905237eb99eeca8f935a300caf550ec16f3e4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1B6B59A0-5021-4D45-9018-C8FC0B34CD9F/libusbmuxd.xcframework.zip", checksum: "3502f2bf65622d1fff1b18f3089014e61381e2e0abead914cb112c3cdf4e045d"),
    ]
)

