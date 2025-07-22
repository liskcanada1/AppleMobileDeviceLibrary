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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CAF48461-81BB-466E-88E4-E6421125E001/libimobiledevice.xcframework.zip", checksum: "25a6d08bcfedb734c87ded3565488afe6e25b5082f2771d6a008aba05dde63d3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CAF48461-81BB-466E-88E4-E6421125E001/libimobiledevice_glue.xcframework.zip", checksum: "996d33bd36864d36a56783555f9d86634d20a4e530d5ac2e5fb2203d50436864"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CAF48461-81BB-466E-88E4-E6421125E001/libplist.xcframework.zip", checksum: "78bb23b8d4cbf86037730856511874fb8982af22dbe912b193ca4432d8f75265"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CAF48461-81BB-466E-88E4-E6421125E001/libtatsu.xcframework.zip", checksum: "89c8cc7ff1a54c304fd4dbbf63819874b83647a7cf6d2e20764e8aead570420e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CAF48461-81BB-466E-88E4-E6421125E001/libusbmuxd.xcframework.zip", checksum: "c3c72701262ca0c1ab2e5b69b8c4bb5ccda02e47df003f6543f08802a6a0ebe4"),
    ]
)

