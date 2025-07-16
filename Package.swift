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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3C246E8-2812-48FC-AFA5-FC8D8A943E6C/libimobiledevice.xcframework.zip", checksum: "dbfd3b46b1f5ceeaee9a081767bf0683614884d917fc5d706d36be766a05f912"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3C246E8-2812-48FC-AFA5-FC8D8A943E6C/libimobiledevice_glue.xcframework.zip", checksum: "620f506a6e2cc0676fe082cb1465ae5a6282d09b606253167589dc28c0e90883"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3C246E8-2812-48FC-AFA5-FC8D8A943E6C/libplist.xcframework.zip", checksum: "ed43b3b47977984cbe000b4e0e6ac4238cea8e0a922275d54c4a975c46806068"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3C246E8-2812-48FC-AFA5-FC8D8A943E6C/libtatsu.xcframework.zip", checksum: "2906259ebfb451b8b47d38d95e27471523853ca1c7c027f2f44534c42258d083"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3C246E8-2812-48FC-AFA5-FC8D8A943E6C/libusbmuxd.xcframework.zip", checksum: "810484f277c74b9ef155e2bee94a44b90e276890761b269e6c6701a8dd5bd84a"),
    ]
)

