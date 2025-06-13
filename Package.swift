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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.937C485F-ECD6-4F51-8AB3-D7BE010A4D42/libimobiledevice.xcframework.zip", checksum: "324cdb8630fea7418e341e438d86d5572a5fce1ef90e73fa0ac43ce3aa9baced"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.937C485F-ECD6-4F51-8AB3-D7BE010A4D42/libimobiledevice_glue.xcframework.zip", checksum: "47daa8bbf3e94ad6a6f6d3992d6a8a79308f0756754453896deb34bfd4d1e319"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.937C485F-ECD6-4F51-8AB3-D7BE010A4D42/libplist.xcframework.zip", checksum: "20be62e9aee59c724f95c7b08caf74438d7a64f84e2de0ae407a2af9db11b500"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.937C485F-ECD6-4F51-8AB3-D7BE010A4D42/libtatsu.xcframework.zip", checksum: "b5b7aabaf2d85a9578da90967208b53bbad06f6dee679f047624bd7c8be62323"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.937C485F-ECD6-4F51-8AB3-D7BE010A4D42/libusbmuxd.xcframework.zip", checksum: "f77ea1f388c3c227f2135d27a0dc8f513c1b0c796884df0fa3d3a1f5b23bb306"),
    ]
)

