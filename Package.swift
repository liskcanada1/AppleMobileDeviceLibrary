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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.607AD57E-5D11-463A-A054-328025AAA83D/libimobiledevice.xcframework.zip", checksum: "f907623d283a9820ee086710d28c2896c33a769059008c60db79db2934858b29"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.607AD57E-5D11-463A-A054-328025AAA83D/libimobiledevice_glue.xcframework.zip", checksum: "a14e098e8b45a1cb93c00fbcb2f9b3e2cb9d16271a6a6afdc3c7c87c7c8b77e9"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.607AD57E-5D11-463A-A054-328025AAA83D/libplist.xcframework.zip", checksum: "a403df56b8500f6d5c9bcae21f16be03b2f380aad717a320dbd35499dee2627b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.607AD57E-5D11-463A-A054-328025AAA83D/libtatsu.xcframework.zip", checksum: "30c9a883cb93ab7564ef601b3569e5d25f86bd089e7b7233ea9c50e12d31c84d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.607AD57E-5D11-463A-A054-328025AAA83D/libusbmuxd.xcframework.zip", checksum: "5b060d6353d0a9cbfc10082466bf5689b9c7759cf14b7fce5277ae752195aeed"),
    ]
)

