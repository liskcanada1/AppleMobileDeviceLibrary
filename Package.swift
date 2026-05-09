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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AA3AC4E7-09B5-4820-9556-286E95709B2E/libimobiledevice.xcframework.zip", checksum: "30d24135d3a6b22835df4204cdc46044914aa59e87be15184d057ad175be1c06"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AA3AC4E7-09B5-4820-9556-286E95709B2E/libimobiledevice_glue.xcframework.zip", checksum: "ad8e774c5ac246ad9b1ed93da10860b538520a24a96c8f357e8ceb5b76ce031d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AA3AC4E7-09B5-4820-9556-286E95709B2E/libplist.xcframework.zip", checksum: "08a74dcd85d4e744bde1ba2640fc86b9e7c43ae1acc97e50f1d79d20a90520b0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AA3AC4E7-09B5-4820-9556-286E95709B2E/libtatsu.xcframework.zip", checksum: "654ef5ee2ddfd745130b476560196a8da29136668e9b59cc113e709af70a1ed9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AA3AC4E7-09B5-4820-9556-286E95709B2E/libusbmuxd.xcframework.zip", checksum: "5532c5e413902c216e27933708ab60fa76749c03683cdc677241d8257366533f"),
    ]
)

