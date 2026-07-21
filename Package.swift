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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FE76995D-29AE-4438-B4F0-7CE4F4A109F8/libimobiledevice.xcframework.zip", checksum: "dded692eafc32c47edb14a046bdd2d1e78877f747e28c69744de810db243cf4a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FE76995D-29AE-4438-B4F0-7CE4F4A109F8/libimobiledevice_glue.xcframework.zip", checksum: "ac93dbfd390b30dffe35eaeea43ad142ff4c3a2325c0928ddab92855e9793a0c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FE76995D-29AE-4438-B4F0-7CE4F4A109F8/libplist.xcframework.zip", checksum: "8387641d802b3e8458cac1350021b348d121b4c0c52d1166b9dbb1e41ac5a40c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FE76995D-29AE-4438-B4F0-7CE4F4A109F8/libtatsu.xcframework.zip", checksum: "e7f4f1f907fa1424eda00aced8e8d8b37236bc29fbb60f2eb6a5940b50ed7f5a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FE76995D-29AE-4438-B4F0-7CE4F4A109F8/libusbmuxd.xcframework.zip", checksum: "d4c525e7e89dbf216d81a29e08f2f5814e5dba06ffe972db39758e47216855da"),
    ]
)

