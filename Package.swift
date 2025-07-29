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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C421E1B5-B4FB-4088-866F-A6B14EE1A03B/libimobiledevice.xcframework.zip", checksum: "392a3c60ad9e279c68ac3d352e808de5541778aebb0923d30ebd2240439af307"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C421E1B5-B4FB-4088-866F-A6B14EE1A03B/libimobiledevice_glue.xcframework.zip", checksum: "c8f98bc463c2ac26d5608ab7442eeccae1409e1c99d6365c9f67336b81a13a91"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C421E1B5-B4FB-4088-866F-A6B14EE1A03B/libplist.xcframework.zip", checksum: "2e0cf74f30f1b3c4db9b034723afb0e6d4cde79f1b2550ad06fdd9fedbc2543e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C421E1B5-B4FB-4088-866F-A6B14EE1A03B/libtatsu.xcframework.zip", checksum: "d32eb7278356f53605ccd93331a9984cb86decdb8d7522e0bea1874c3186a92c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C421E1B5-B4FB-4088-866F-A6B14EE1A03B/libusbmuxd.xcframework.zip", checksum: "6305372c3f180d7d51ed2d6190c400716f6618ba61eab0a1890a923a3007cc6a"),
    ]
)

