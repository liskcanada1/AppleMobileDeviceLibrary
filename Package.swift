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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FF2E60E1-20CA-491C-AD01-D7FBE8E24841/libimobiledevice.xcframework.zip", checksum: "a91f19bc9f3bf48335d855be82334a159fbdeff0d0bd0ba8a637a2ce0e56031b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FF2E60E1-20CA-491C-AD01-D7FBE8E24841/libimobiledevice_glue.xcframework.zip", checksum: "620d81634715bfdfcd39f962c0a7e2d6f6af5c420430c5bca7b5aa3bb3ee0ac1"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FF2E60E1-20CA-491C-AD01-D7FBE8E24841/libplist.xcframework.zip", checksum: "4a438b8b801305ec9dc01eab4addf20a91362a0e7c207cee2f86ea15a4d0f835"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FF2E60E1-20CA-491C-AD01-D7FBE8E24841/libtatsu.xcframework.zip", checksum: "11744c4e70d7fe5e9752141bef01ea607c442b952df4776132459d16a2b7dc41"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FF2E60E1-20CA-491C-AD01-D7FBE8E24841/libusbmuxd.xcframework.zip", checksum: "6d0bab47f3fdd12b59af6ba57564e5877c9d534b0410f9b522141ae0d47b4594"),
    ]
)

