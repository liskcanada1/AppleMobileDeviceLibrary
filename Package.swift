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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5D1296B-85D5-429D-A4DB-2BDCFF540E7E/libimobiledevice.xcframework.zip", checksum: "8f8c76ed9a70867c60784655d79135f10ff041d604d35471e1a60c00a241f14d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5D1296B-85D5-429D-A4DB-2BDCFF540E7E/libimobiledevice_glue.xcframework.zip", checksum: "5366c986537b618601f405da867d1c2a5c7cec1d0d38b4c4238583fa1badb1fb"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5D1296B-85D5-429D-A4DB-2BDCFF540E7E/libplist.xcframework.zip", checksum: "047ea1fb981734c73a80a5d5072e2afef4e51b1945a22f258cc076682b40660a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5D1296B-85D5-429D-A4DB-2BDCFF540E7E/libtatsu.xcframework.zip", checksum: "387bda817dfeb99c3228b358dbb9ab633365f1f4c0230f960b41a590f1e1d606"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5D1296B-85D5-429D-A4DB-2BDCFF540E7E/libusbmuxd.xcframework.zip", checksum: "c0120704085c37b258c8ac00f08449752177ec5c5ddad9fae97304be79fef95f"),
    ]
)

