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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3A6C89A8-993A-4B13-8795-27295883FA6C/libimobiledevice.xcframework.zip", checksum: "e72f670ee2f7c2a3931e684f3060a03e5cff5bc761e70f2bf694131bd6189f56"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3A6C89A8-993A-4B13-8795-27295883FA6C/libimobiledevice_glue.xcframework.zip", checksum: "016abb95fd8b368b525883dae59cd9811110cc8a41d259f75858425404b950c1"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3A6C89A8-993A-4B13-8795-27295883FA6C/libplist.xcframework.zip", checksum: "c28a6525618d9a0da634d48c8bb0394100c9e2397eef217c969efac5ff096b5e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3A6C89A8-993A-4B13-8795-27295883FA6C/libtatsu.xcframework.zip", checksum: "c1bdf28c640013d5fc6cfb4b6c3efb76f07dd7e0ce99cb8213e91c9285f1e244"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3A6C89A8-993A-4B13-8795-27295883FA6C/libusbmuxd.xcframework.zip", checksum: "4fa6398fb5b6e5d4df874fc7e471101e31a1f15d348333996ca9d20bbbdb476a"),
    ]
)

