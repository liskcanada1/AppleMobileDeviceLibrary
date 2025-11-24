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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.43AA5471-0240-49C5-B3F6-C6BEC028FDD6/libimobiledevice.xcframework.zip", checksum: "0355941d1d2196b7edff8fc690cc0c09958f6a24ee2d64d27c179b44f9227c67"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.43AA5471-0240-49C5-B3F6-C6BEC028FDD6/libimobiledevice_glue.xcframework.zip", checksum: "9dd880a5f0b5ba4311866a05f377b3774762be96668d9f2d2d0d2de576c0595f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.43AA5471-0240-49C5-B3F6-C6BEC028FDD6/libplist.xcframework.zip", checksum: "ac9608fa83fb1622533ab24ad66a70327318a2807b86b254bab2d6f033195780"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.43AA5471-0240-49C5-B3F6-C6BEC028FDD6/libtatsu.xcframework.zip", checksum: "8a130277911074a8498b51d1f2d3911dfc0b2a3bb3b10862ee0c15338a70fd43"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.43AA5471-0240-49C5-B3F6-C6BEC028FDD6/libusbmuxd.xcframework.zip", checksum: "b9a0b05129dfec6fc953918df2f8e12a9e16a46943e834f57ace90c845a33cb7"),
    ]
)

