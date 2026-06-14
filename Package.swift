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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CE5530A6-6AC3-41D8-806C-B521CC842C98/libimobiledevice.xcframework.zip", checksum: "e27566ab8afbb32f15f28728fb5b9f7e5c0283448a80942aa00aab30c4a05fb7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CE5530A6-6AC3-41D8-806C-B521CC842C98/libimobiledevice_glue.xcframework.zip", checksum: "0d219f3bb92571c9344c3bb68d30b66f393aa37498bdcaf48cb3996f7b1cff01"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CE5530A6-6AC3-41D8-806C-B521CC842C98/libplist.xcframework.zip", checksum: "6de94477ee721156c3509a0f5ca1aa677fefe5ef9f7a66bc7c99e2c8b5efdc69"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CE5530A6-6AC3-41D8-806C-B521CC842C98/libtatsu.xcframework.zip", checksum: "8c58b12278c0be72d8a2977e688f42756417d5fbdb5fe737a4350809fc4ce1fa"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CE5530A6-6AC3-41D8-806C-B521CC842C98/libusbmuxd.xcframework.zip", checksum: "76e5c42f4413aeec3aa4af59e21b46ddc0c1403cf2f0e154676c92fe89ec629b"),
    ]
)

