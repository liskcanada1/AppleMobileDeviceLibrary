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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.65F798A2-D24B-40CC-94F6-428DD28E2AA0/libimobiledevice.xcframework.zip", checksum: "7f2bc6b52de760f9fbf792efd00457a81953f766fe3706c0ab62ea334839c078"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.65F798A2-D24B-40CC-94F6-428DD28E2AA0/libimobiledevice_glue.xcframework.zip", checksum: "675bc6564c21ee474cb8fc77147a5238b6ebd8c0aef3c357a7803d2ae6a530db"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.65F798A2-D24B-40CC-94F6-428DD28E2AA0/libplist.xcframework.zip", checksum: "6a9e6e7404e62ee5a376226b68a2ab3130f3d8bd4c34f7236d993e0c2cee7c4c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.65F798A2-D24B-40CC-94F6-428DD28E2AA0/libtatsu.xcframework.zip", checksum: "1208b38d6d1c9b10a98ab3cd99725742814d13fcd1e822e900541d19f712c270"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.65F798A2-D24B-40CC-94F6-428DD28E2AA0/libusbmuxd.xcframework.zip", checksum: "b582dc2cc10b707719ec165f83ee97143b13f8c6ae582194938424489411b44e"),
    ]
)

