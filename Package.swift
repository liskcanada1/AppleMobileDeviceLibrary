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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3024FC02-F018-4B96-9405-2D164FEC49D2/libimobiledevice.xcframework.zip", checksum: "34343177409550d73fa58c04da4f118a77cfa6fd79478d7fc1e1360e5dac1375"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3024FC02-F018-4B96-9405-2D164FEC49D2/libimobiledevice_glue.xcframework.zip", checksum: "303107889e9c05829cfd250a69a8470e8ef0913a43e610022c2a67918ba3b278"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3024FC02-F018-4B96-9405-2D164FEC49D2/libplist.xcframework.zip", checksum: "d7b7940b40f07482abaae056b7170d3348df2ecdc2d2c0bf0ac4adc085bd1b3e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3024FC02-F018-4B96-9405-2D164FEC49D2/libtatsu.xcframework.zip", checksum: "9042d693dfd928fed57b7ae2c837f3a4c2546c0f2658a84ee071f0dc24c7adac"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3024FC02-F018-4B96-9405-2D164FEC49D2/libusbmuxd.xcframework.zip", checksum: "1612d8ee824974c96ff37c5f1ff48a183a9bb6851c0d199b3c4e18a2093f37d8"),
    ]
)

