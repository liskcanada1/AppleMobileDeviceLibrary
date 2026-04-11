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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.01409367-81DB-470B-8E7D-B221A75FA3A7/libimobiledevice.xcframework.zip", checksum: "5ee251bbddb9ab4f86566e329f2f7ea8593c29d9b953f03e621dba83f441145b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.01409367-81DB-470B-8E7D-B221A75FA3A7/libimobiledevice_glue.xcframework.zip", checksum: "f5f0e5097ef542f3febc04790e0d83cc8bbdffdf095351287ff9c3beabbe04d5"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.01409367-81DB-470B-8E7D-B221A75FA3A7/libplist.xcframework.zip", checksum: "e4e56ee90d632d8552e4760d055a462edae248df785ff3b569de4f1412a5eefd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.01409367-81DB-470B-8E7D-B221A75FA3A7/libtatsu.xcframework.zip", checksum: "d6b396bbd07da8b5a28993509a4a54418e8bd2689dc08f7e75e7b50fce133437"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.01409367-81DB-470B-8E7D-B221A75FA3A7/libusbmuxd.xcframework.zip", checksum: "00050a535056e7161273d4d89544951c5f65ef6a9c65ea0e5ab7de2da3a2c93a"),
    ]
)

