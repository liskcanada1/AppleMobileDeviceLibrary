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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.60EFAE33-8C10-417F-B384-5AB1B896D419/libimobiledevice.xcframework.zip", checksum: "af3ede7418e1974ff26fbf823bab0b593ce24c543d845a79a1d39e18e28d275d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.60EFAE33-8C10-417F-B384-5AB1B896D419/libimobiledevice_glue.xcframework.zip", checksum: "58f66b1a3522d676dd6c23661f9a781d8c5719db73f01501f794bbcb9f05314f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.60EFAE33-8C10-417F-B384-5AB1B896D419/libplist.xcframework.zip", checksum: "7103f5d7316d01ddc978457774121b055a8fb66c4a61f227e8d715ea0c0aec20"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.60EFAE33-8C10-417F-B384-5AB1B896D419/libtatsu.xcframework.zip", checksum: "ed969d1b4a670856ef926c777a6c45b55e356c6a114f037155f5e46eed069a57"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.60EFAE33-8C10-417F-B384-5AB1B896D419/libusbmuxd.xcframework.zip", checksum: "796a88e361d9d6befd31f780b134ef4aca1a6986113c7ed751ac79506d740537"),
    ]
)

