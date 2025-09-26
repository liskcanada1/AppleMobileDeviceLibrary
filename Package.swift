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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3192E36C-0970-4150-9A6A-3E2C785A4F21/libimobiledevice.xcframework.zip", checksum: "506d31fe99fb46aa99c739d90554f55dbfe77ee6aec74786a4b8a2731bc278c3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3192E36C-0970-4150-9A6A-3E2C785A4F21/libimobiledevice_glue.xcframework.zip", checksum: "41ac68e7c1983f1a00b7aab510dff9b07b78c4fc8c8cdd605f0e7e9988b2b4b0"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3192E36C-0970-4150-9A6A-3E2C785A4F21/libplist.xcframework.zip", checksum: "510ee8c37c459847da9ab18b7c6cc03cbf0de00fdbc14b189e311c2d4a518d83"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3192E36C-0970-4150-9A6A-3E2C785A4F21/libtatsu.xcframework.zip", checksum: "6d1253cc376faae070f2f408a4849ec34d202b76636bff9af7827ee94b9abd24"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3192E36C-0970-4150-9A6A-3E2C785A4F21/libusbmuxd.xcframework.zip", checksum: "00c0c6566758de6071ac14e7dce3a59e2a0b6aad1d071413b0550b67f1946fb5"),
    ]
)

