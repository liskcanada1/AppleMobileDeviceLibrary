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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DEF918C5-CFD2-4392-988D-2CD96626B796/libimobiledevice.xcframework.zip", checksum: "33c0cbc41ccdab54ae9c0d5bce6225f2c36b4b7599308a25163aedbe29528904"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DEF918C5-CFD2-4392-988D-2CD96626B796/libimobiledevice_glue.xcframework.zip", checksum: "e664e78149b98a7310598c7f4353c141039759b2ff4648112e574a714771db60"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DEF918C5-CFD2-4392-988D-2CD96626B796/libplist.xcframework.zip", checksum: "f05293896020e20abeee20bd4fda2937943d6fe084120b0f2e27396ef7e9ec49"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DEF918C5-CFD2-4392-988D-2CD96626B796/libtatsu.xcframework.zip", checksum: "d63a13edeb9a22788838add323807140b8100fb00a4e6d985e33d8fae198388b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DEF918C5-CFD2-4392-988D-2CD96626B796/libusbmuxd.xcframework.zip", checksum: "97e9c929add3591b623c615541219b66e64ca6cc83d3e8649d3ad9be39488b71"),
    ]
)

