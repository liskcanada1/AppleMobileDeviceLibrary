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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6A4926E2-06C2-40DC-A5BB-335E5C36C734/libimobiledevice.xcframework.zip", checksum: "3e488cd26a30d60114d234ba96cca56870efa47fd686012ed6b56ad93eff6c48"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6A4926E2-06C2-40DC-A5BB-335E5C36C734/libimobiledevice_glue.xcframework.zip", checksum: "59d16ddd22bd43f784d86b389689fe73b481af24cb515f26f1cc7e576dc4bad2"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6A4926E2-06C2-40DC-A5BB-335E5C36C734/libplist.xcframework.zip", checksum: "9b64906bc6f476e73d1ac2901ec708e4ff821f1f7edaa6783594649cbd08faa1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6A4926E2-06C2-40DC-A5BB-335E5C36C734/libtatsu.xcframework.zip", checksum: "d0677f00097048dcd1b2bf0236a076e6ba0b39b47c0ca95dda60e1484e4d9e03"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6A4926E2-06C2-40DC-A5BB-335E5C36C734/libusbmuxd.xcframework.zip", checksum: "309f4b182e87b2641b3963ecea1970489bbb9df547802f3ac9f883ce192e3bd9"),
    ]
)

