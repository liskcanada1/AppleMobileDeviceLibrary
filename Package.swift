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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.96A13EAC-5667-4B99-83E0-0B6428BAD422/libimobiledevice.xcframework.zip", checksum: "7e5046680712074571976dab3feca421506b6877db3b0d8eb12763eb53bdc60f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.96A13EAC-5667-4B99-83E0-0B6428BAD422/libimobiledevice_glue.xcframework.zip", checksum: "e3ee3a72a25f228a269e4d5dcbc60b97656046ce51ac976e4c93d29a61cc9a49"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.96A13EAC-5667-4B99-83E0-0B6428BAD422/libplist.xcframework.zip", checksum: "48aa7d756555942cd23ec36b6586ffc6b12dcddf6b511088bdef53efb3d3cf78"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.96A13EAC-5667-4B99-83E0-0B6428BAD422/libtatsu.xcframework.zip", checksum: "d97b5242b077cdba00d85e93c3bc71d90cd8efd43d648929442c885eb0bc5bcb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.96A13EAC-5667-4B99-83E0-0B6428BAD422/libusbmuxd.xcframework.zip", checksum: "f4a5bae56e7a0e1aea55e88509018a1ffc93dc19a46a5ec83bd72ae04f7b3a2e"),
    ]
)

