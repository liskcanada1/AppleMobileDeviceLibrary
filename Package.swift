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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9ABFB855-B5AD-499D-B5FA-4BC866211E37/libimobiledevice.xcframework.zip", checksum: "911fbe83d6309f9588935f86eb9885263c477ecede5ca3244911d9803c866263"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9ABFB855-B5AD-499D-B5FA-4BC866211E37/libimobiledevice_glue.xcframework.zip", checksum: "f84aa4922f7b9d9d3f7c05ac95d16071977c47030b683ff6ce733902ca5d111f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9ABFB855-B5AD-499D-B5FA-4BC866211E37/libplist.xcframework.zip", checksum: "71c0953ad51d2943ccd1535fc0fa2c543e439b8502409daa7262fcd28a541953"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9ABFB855-B5AD-499D-B5FA-4BC866211E37/libtatsu.xcframework.zip", checksum: "9b21bcc1e8d8b6d77bddbb8277c04c5e409d1c34b7dfe7ad0bed34f8e5f9daac"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9ABFB855-B5AD-499D-B5FA-4BC866211E37/libusbmuxd.xcframework.zip", checksum: "31d4ae895fc87389f6bb28ab4f921563fbaa1e09de1df5c669fcfe6ab1b8fda1"),
    ]
)

