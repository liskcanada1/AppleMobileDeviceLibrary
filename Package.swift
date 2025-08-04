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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3F4833E8-790A-4FF2-B8C1-0A6EACE56918/libimobiledevice.xcframework.zip", checksum: "cdff3ca0bd9e2e4b0a0822dc663f956ea1ad848869355a685e717d83fd698d86"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3F4833E8-790A-4FF2-B8C1-0A6EACE56918/libimobiledevice_glue.xcframework.zip", checksum: "9605c4169f5cc85a0fae9ac12fddd2299466da66badf8ab4652176db9742d793"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3F4833E8-790A-4FF2-B8C1-0A6EACE56918/libplist.xcframework.zip", checksum: "1df81b152849e27a0741cfa8a0952e03f7068fd7336e8321e79c41b4e0323e04"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3F4833E8-790A-4FF2-B8C1-0A6EACE56918/libtatsu.xcframework.zip", checksum: "ac4b1115f2cdefb36cc89322e039e4835633bd2afa33cc918cc0c2868f6986f4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3F4833E8-790A-4FF2-B8C1-0A6EACE56918/libusbmuxd.xcframework.zip", checksum: "9239b10a428709d5c46b4a7d001a3ea7d2aa767ab39d26f9c2cc836a0b66b3c2"),
    ]
)

