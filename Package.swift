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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.608BE871-7B8D-462A-8870-B6D43974E3F7/libimobiledevice.xcframework.zip", checksum: "7cb09162a3e7e3f5d9a929fd44026fa8943877cb564a90f4b4da0c519f020a3e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.608BE871-7B8D-462A-8870-B6D43974E3F7/libimobiledevice_glue.xcframework.zip", checksum: "640970e27b0a1704017ba7980c41cc4fbbb374b888ffd28ed72279b28c2dafc7"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.608BE871-7B8D-462A-8870-B6D43974E3F7/libplist.xcframework.zip", checksum: "91e80e48317e2081c1268ab06de00d278cd355b8eddabdbbde60471dd1c28e66"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.608BE871-7B8D-462A-8870-B6D43974E3F7/libtatsu.xcframework.zip", checksum: "3ed429d93dba06adf19709d8cd38da94540aad3ed38f0762f4d72b4811aa044d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.608BE871-7B8D-462A-8870-B6D43974E3F7/libusbmuxd.xcframework.zip", checksum: "23375ba200359bfbb668af1e953fbe7eedfbc907f56210cb2d14f676ad3d44dc"),
    ]
)

