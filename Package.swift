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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDC2C3B1-8EB2-45E7-98AD-0F57D8F86E9A/libimobiledevice.xcframework.zip", checksum: "a90c477ea28612b47fa09c8d6cb3cc4fb3d801bd0eb39399a3c2bb992e25f832"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDC2C3B1-8EB2-45E7-98AD-0F57D8F86E9A/libimobiledevice_glue.xcframework.zip", checksum: "68cb8ada2b78cdd0484c94349d617a8b78fee76116099384d019eeb84f384aff"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDC2C3B1-8EB2-45E7-98AD-0F57D8F86E9A/libplist.xcframework.zip", checksum: "852987a26d8863cfcb080788e75aa7450e2908ffcf12bfcae9c29bb8a1273e09"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDC2C3B1-8EB2-45E7-98AD-0F57D8F86E9A/libtatsu.xcframework.zip", checksum: "6bbc72b411f8b62cbb4cb42c826d3099dfe0ca423a37ea6b70fb359923f8dffe"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FDC2C3B1-8EB2-45E7-98AD-0F57D8F86E9A/libusbmuxd.xcframework.zip", checksum: "b039303963424ee8be0b3c79075f070ba1198afb82ef13ba24529ebb0438f051"),
    ]
)

