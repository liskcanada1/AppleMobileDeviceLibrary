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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0B5AEF16-E5DA-4A53-BB4F-2AC864E26FF8/libimobiledevice.xcframework.zip", checksum: "b156fea0489ca40de348124a54d5568500900a86c21c929987785e141848611d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0B5AEF16-E5DA-4A53-BB4F-2AC864E26FF8/libimobiledevice_glue.xcframework.zip", checksum: "ab0b91729a61d902032132ce8bf468ebb41db7de620d795195df2a68f159e2d1"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0B5AEF16-E5DA-4A53-BB4F-2AC864E26FF8/libplist.xcframework.zip", checksum: "b952caf776e51f4646c6c0b8843f1826ebbe6d2e89b7225c62eaab7b42c2e1aa"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0B5AEF16-E5DA-4A53-BB4F-2AC864E26FF8/libtatsu.xcframework.zip", checksum: "a6cf3d1140b1da843b1d03c0c0143f84d66d2fce618660152b6d834a9f587b96"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0B5AEF16-E5DA-4A53-BB4F-2AC864E26FF8/libusbmuxd.xcframework.zip", checksum: "d01d49564557b230ae5368c527d5ae4ba08c88e6dfd4d87946d2a00c0d104d24"),
    ]
)

