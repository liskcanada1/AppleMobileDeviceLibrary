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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.68AF8440-5CB7-4172-B2A6-3141A7EB37D9/libimobiledevice.xcframework.zip", checksum: "b367bc5b908395323b943bf590ee78da0b59b3c23e9f7e87c3dc234c9ef82a8c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.68AF8440-5CB7-4172-B2A6-3141A7EB37D9/libimobiledevice_glue.xcframework.zip", checksum: "cf7dd6f778424554e01b8835392bf05e62daeedad924185903b8f4b4cf2a992b"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.68AF8440-5CB7-4172-B2A6-3141A7EB37D9/libplist.xcframework.zip", checksum: "d61424cd5c46f0549ca2176365ce535dc1f3a54e01d530decad2c5d8affb10ff"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.68AF8440-5CB7-4172-B2A6-3141A7EB37D9/libtatsu.xcframework.zip", checksum: "fe2abf75badfbb76f136bb619df6cce1aecbd1f3f5b1ffb424ca70800ec174c1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.68AF8440-5CB7-4172-B2A6-3141A7EB37D9/libusbmuxd.xcframework.zip", checksum: "d4016a50e0751811ee192950a22d786879a8e851936163fd3a8cc4ec96aa948a"),
    ]
)

