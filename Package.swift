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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D4EA0F38-609B-441A-90A7-2CEEF42AC139/libimobiledevice.xcframework.zip", checksum: "8bbff1c09f404284a5f948850243da4c8d86b09f835ebc8d06f2a9dabaa38173"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D4EA0F38-609B-441A-90A7-2CEEF42AC139/libimobiledevice_glue.xcframework.zip", checksum: "df997a933eea8d04a05b24a1d9aea43e51a6f58d2a818fd27ad70ccb8e358b19"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D4EA0F38-609B-441A-90A7-2CEEF42AC139/libplist.xcframework.zip", checksum: "9c9a85a614458bb203414419ce0c175cfd7f5c04032e78b864ab26f6a9e811de"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D4EA0F38-609B-441A-90A7-2CEEF42AC139/libtatsu.xcframework.zip", checksum: "492b32d2971d5028360edeb1b509b428d4ad49308c7dc25c53bcd8594aa912b1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D4EA0F38-609B-441A-90A7-2CEEF42AC139/libusbmuxd.xcframework.zip", checksum: "65e5c2babeda437928fb577c1e33210fd3a31efc91e7df03ce7a340b1c71f82b"),
    ]
)

