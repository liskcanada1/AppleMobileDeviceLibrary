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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.83B3598B-BF1B-4CC2-B48F-F72D761B8329/libimobiledevice.xcframework.zip", checksum: "079143c623d478d6008a46d026c99c7318ad12bf3783d8b081a2b42309239e60"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.83B3598B-BF1B-4CC2-B48F-F72D761B8329/libimobiledevice_glue.xcframework.zip", checksum: "c7b4a3954e8e0b74b48336d51c2ec0bf1ccb9beb0bdba850257c49994a78cca5"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.83B3598B-BF1B-4CC2-B48F-F72D761B8329/libplist.xcframework.zip", checksum: "e83dd39482be923f41f4df6fb608d19556122379a323bf177040aeb36c03a898"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.83B3598B-BF1B-4CC2-B48F-F72D761B8329/libtatsu.xcframework.zip", checksum: "b4714d4ce21f355c7a8282f96c46f9a49716e2eff077ef68f6b20db8a3cbef25"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.83B3598B-BF1B-4CC2-B48F-F72D761B8329/libusbmuxd.xcframework.zip", checksum: "833eb21698d3c5483dd4cf503913ed01f2d1cda3162ced6353cdd9692945233d"),
    ]
)

