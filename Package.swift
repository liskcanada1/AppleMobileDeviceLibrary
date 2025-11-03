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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3DC9DA15-8577-46E1-9B06-9F724FA8D8F8/libimobiledevice.xcframework.zip", checksum: "82feaae0d46164c172b05368dcba5ed1411ceb83c6e48a0d94378a876cd9b90d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3DC9DA15-8577-46E1-9B06-9F724FA8D8F8/libimobiledevice_glue.xcframework.zip", checksum: "cb0f46209187ad7aa13cc5e0cf52fc15bd401f4e351b8b705482388d9725b0a9"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3DC9DA15-8577-46E1-9B06-9F724FA8D8F8/libplist.xcframework.zip", checksum: "b238af207adc78cab5ac1cd867ce82298ed508a9d99323298eef980b4fe53291"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3DC9DA15-8577-46E1-9B06-9F724FA8D8F8/libtatsu.xcframework.zip", checksum: "567794e8c010fa6e88332faea4ecc90b7dbb23c043a992cc6610f8a9cf6869e4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3DC9DA15-8577-46E1-9B06-9F724FA8D8F8/libusbmuxd.xcframework.zip", checksum: "711d10829d13f08c53794fa573f606db4b49b0d256dc01e385581b965d6cbe49"),
    ]
)

