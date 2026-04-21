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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AB4AAB44-C1D3-4CDF-9815-5A4D00215D83/libimobiledevice.xcframework.zip", checksum: "63c9e00af2dc3f223a9f425563869d326f33c7b93b4d6b477ea0cca7500fb63a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AB4AAB44-C1D3-4CDF-9815-5A4D00215D83/libimobiledevice_glue.xcframework.zip", checksum: "93317de5d039393b74f4df6ead16d3e52f8ad95277864f2af6a39adcf77a1b03"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AB4AAB44-C1D3-4CDF-9815-5A4D00215D83/libplist.xcframework.zip", checksum: "480a36b7c25e7a2549c954e601b4a0412446b199520917c9197efbae7ab69324"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AB4AAB44-C1D3-4CDF-9815-5A4D00215D83/libtatsu.xcframework.zip", checksum: "3e86e8156b6c1dd6a9b3a5d8d25e6ae585951556933a7e84c73ea5fa6ea756a3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AB4AAB44-C1D3-4CDF-9815-5A4D00215D83/libusbmuxd.xcframework.zip", checksum: "eecec5d667ef6b8ede6819105ba247f181b5aba54c05edb286b49ccd7622ac94"),
    ]
)

