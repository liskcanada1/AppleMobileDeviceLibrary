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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E77FD2E-3169-4F34-AC98-DCB1D7F07DBC/libimobiledevice.xcframework.zip", checksum: "376202fb2f7512370a4651d72da919fe20b7b6d3a2521cb9c83a80ee0dd9fa22"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E77FD2E-3169-4F34-AC98-DCB1D7F07DBC/libimobiledevice_glue.xcframework.zip", checksum: "02e8aa2d438d3a87b6cee1e0667188e46847adf9529d8bee33087a64dd4694b4"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E77FD2E-3169-4F34-AC98-DCB1D7F07DBC/libplist.xcframework.zip", checksum: "9047b7fc1f8efa3fbd0abe9131be2166a4e058efcaebf48a62641fb5223d1428"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E77FD2E-3169-4F34-AC98-DCB1D7F07DBC/libtatsu.xcframework.zip", checksum: "76b5e55dd976f06bd26c83d046d28dfe7fe48ae859e26bfae523cddbea32c71b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E77FD2E-3169-4F34-AC98-DCB1D7F07DBC/libusbmuxd.xcframework.zip", checksum: "4bf8bf47bbc91440a424827e7d5e027c25dfc6284fcaeac4f6f6c31369883537"),
    ]
)

