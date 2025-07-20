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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5C713765-780D-4A7F-910A-D232BF1F01E9/libimobiledevice.xcframework.zip", checksum: "4b52bfea9c4ab4ad188f176b18e96cc81cc12a1244c3492a6c962ef33e641332"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5C713765-780D-4A7F-910A-D232BF1F01E9/libimobiledevice_glue.xcframework.zip", checksum: "f9346d3d4063c47b2bf6b7c99f5208ad136fd9d33bb06ee89bb2e07ab5ad0517"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5C713765-780D-4A7F-910A-D232BF1F01E9/libplist.xcframework.zip", checksum: "4a1d2b25b5788cd89379a7f1869a6b904132bb47871256569e4b1bf8097a61fd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5C713765-780D-4A7F-910A-D232BF1F01E9/libtatsu.xcframework.zip", checksum: "58cf2ac80ac999a3e5bda31559a6ad2a0e7d2f7c0872f6f0a7d92377b7a4090e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5C713765-780D-4A7F-910A-D232BF1F01E9/libusbmuxd.xcframework.zip", checksum: "c907d7a84830a3fd80ae76e140f903a715b490d5ca30345c775e1df692278d36"),
    ]
)

