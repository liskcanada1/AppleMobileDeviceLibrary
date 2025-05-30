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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.342EA84C-9D28-4CFE-B0EE-B617F9055568/libimobiledevice.xcframework.zip", checksum: "1d726e4038dbd4ed6a445088bac048e247a5ecbff31e853fca24f99ed8b0bca4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.342EA84C-9D28-4CFE-B0EE-B617F9055568/libimobiledevice_glue.xcframework.zip", checksum: "8be8f1021365851a58c3a6457be9c8bfb594f47eb92c08f189939e18b21de097"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.342EA84C-9D28-4CFE-B0EE-B617F9055568/libplist.xcframework.zip", checksum: "a5edcd21d48934ab049493f9d3f384301202fa5682faf847b5959073de2a674f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.342EA84C-9D28-4CFE-B0EE-B617F9055568/libtatsu.xcframework.zip", checksum: "0b69d52bdfe1aef6a0cc4f94a0e200980217b1015dd73fec27e6cc0439de8191"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.342EA84C-9D28-4CFE-B0EE-B617F9055568/libusbmuxd.xcframework.zip", checksum: "7e148cf908b8d833630d5b22236e58946850a0e29eefb9d39129e5b5e38c6bf1"),
    ]
)

