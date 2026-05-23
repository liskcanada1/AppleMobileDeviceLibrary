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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1A8B6AA5-02BF-4A88-8AED-CA8D7EE249EB/libimobiledevice.xcframework.zip", checksum: "d80a5da74a5e758dec1ce6c10254b15a0b123b7d781c825092b36a78a1c3964f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1A8B6AA5-02BF-4A88-8AED-CA8D7EE249EB/libimobiledevice_glue.xcframework.zip", checksum: "37b2c92359cc9645b98f1ab1fc1e8888fb1d8105624908d52c4c829d63364739"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1A8B6AA5-02BF-4A88-8AED-CA8D7EE249EB/libplist.xcframework.zip", checksum: "286022498a7172531ee08c2b3038f42fab1dc5fc4902a8a73b525e3d04778c8f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1A8B6AA5-02BF-4A88-8AED-CA8D7EE249EB/libtatsu.xcframework.zip", checksum: "280e309e314d90780425d30dba83c4083370ea4bce347f6d9b18cce7a68b2b5f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1A8B6AA5-02BF-4A88-8AED-CA8D7EE249EB/libusbmuxd.xcframework.zip", checksum: "2f6c5f755ed58026823c98ac11da43338c3cc5c021256e7b9af14c308cf1a59e"),
    ]
)

