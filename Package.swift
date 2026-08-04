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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.50F2F03A-B9CC-488F-AB4A-22E6362C49E6/libimobiledevice.xcframework.zip", checksum: "cdb028311ad22b102628b0a9f67c9f9e8b0365a5c010af8ffb73d7b2a81412aa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.50F2F03A-B9CC-488F-AB4A-22E6362C49E6/libimobiledevice_glue.xcframework.zip", checksum: "484828aee4ec84df8e2edf327f15fe6d79e04c314edc4daaf5782490d104c0ff"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.50F2F03A-B9CC-488F-AB4A-22E6362C49E6/libplist.xcframework.zip", checksum: "d4f6c9bf2418d0240568673f46125af4ee5f9a7a7eb321d6e9787bb6c863d2f0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.50F2F03A-B9CC-488F-AB4A-22E6362C49E6/libtatsu.xcframework.zip", checksum: "1d09d27dd087ccf4189b4ca1c259f2618901b771347ad90da549d11382c41e30"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.50F2F03A-B9CC-488F-AB4A-22E6362C49E6/libusbmuxd.xcframework.zip", checksum: "f26531b1e82cb518a9089192df01d6ad9be7ed05186a5894520244a9ad373d58"),
    ]
)

