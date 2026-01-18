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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B9CD84B3-868D-4D45-A2EC-F85F2C4C7D88/libimobiledevice.xcframework.zip", checksum: "0af90c4428a4d32d883747dbb53be1e53c36cd69af7045e6f436cd54f36029b2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B9CD84B3-868D-4D45-A2EC-F85F2C4C7D88/libimobiledevice_glue.xcframework.zip", checksum: "5f77a92d562ff2c39a98430d43d2fcacdb559a3403c1677c5364d7cd1ab22dd3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B9CD84B3-868D-4D45-A2EC-F85F2C4C7D88/libplist.xcframework.zip", checksum: "6e20186027633688cd2a178a042ca4db1e025ddcd5beff591125f5d45495ce45"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B9CD84B3-868D-4D45-A2EC-F85F2C4C7D88/libtatsu.xcframework.zip", checksum: "119f8cb55b6f94337426c829c1cbec0e9020c3f13f2ef97c5e504067c57b22a9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B9CD84B3-868D-4D45-A2EC-F85F2C4C7D88/libusbmuxd.xcframework.zip", checksum: "05060844d37f14432ef48cd83659c486b78b96b88388f1ab29de30fdf064ded9"),
    ]
)

