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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.51C56878-C6C4-4F94-92B6-747B3FE7512F/libimobiledevice.xcframework.zip", checksum: "af8b29d0a317821bc9093dfd77851f1add01922bb7abd3340f1897bcd16d9295"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.51C56878-C6C4-4F94-92B6-747B3FE7512F/libimobiledevice_glue.xcframework.zip", checksum: "9083f65e016f2d2d47519221874293578e5816b456486ba0d233b77f8d8779cc"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.51C56878-C6C4-4F94-92B6-747B3FE7512F/libplist.xcframework.zip", checksum: "f7babefb3e3b61e01123347904ad057f1d20f294b554b629686b96401663bd06"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.51C56878-C6C4-4F94-92B6-747B3FE7512F/libtatsu.xcframework.zip", checksum: "690c09119bae2db9b5958f911ac272f41bf21ddef47c84b32d3e6bb5be0e63db"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.51C56878-C6C4-4F94-92B6-747B3FE7512F/libusbmuxd.xcframework.zip", checksum: "1937df00058c432bda51e2fee4984a99ab53e0a79cff16f25cd2a6e8f13ba990"),
    ]
)

