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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9BE132B4-3553-46CC-994A-D2C63FFAAB74/libimobiledevice.xcframework.zip", checksum: "4c6a972da1a5307b0ea7a4a1562800b3b20ce693180e2c5f4bd3164be781c4af"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9BE132B4-3553-46CC-994A-D2C63FFAAB74/libimobiledevice_glue.xcframework.zip", checksum: "711323c88ceece01b7d3fb035ebb4b2aa8cfb934b6a1c0b23b8f626c358f9b60"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9BE132B4-3553-46CC-994A-D2C63FFAAB74/libplist.xcframework.zip", checksum: "6859312ae07ceeff5e4387704582fa7d9c7d9fab651d1a18417eec0141ce2fae"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9BE132B4-3553-46CC-994A-D2C63FFAAB74/libtatsu.xcframework.zip", checksum: "04879e6e9190924f402e36e4e538a1addcd14aabbbfa7c82e7778c8d6f01dd0f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9BE132B4-3553-46CC-994A-D2C63FFAAB74/libusbmuxd.xcframework.zip", checksum: "12c0ba00fbfde3727dbbe31d42fa41db5b4e0dc357c0a0ec76a826c15ebbc0d1"),
    ]
)

