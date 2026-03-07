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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E4A42403-F720-48C2-B769-F4CB321C4EBF/libimobiledevice.xcframework.zip", checksum: "d18e0c9c30cb27b5f7138603089fdd0c3eaf62ff378e9f7f1cf0c24ed5227428"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E4A42403-F720-48C2-B769-F4CB321C4EBF/libimobiledevice_glue.xcframework.zip", checksum: "81337d650fd42fbbf955eb960615c448f4dfd132011003535944e980ffb8f0fd"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E4A42403-F720-48C2-B769-F4CB321C4EBF/libplist.xcframework.zip", checksum: "47be17579afd264cc2a6284b5a00652d5061bea52a264a114c31a8a17105ac29"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E4A42403-F720-48C2-B769-F4CB321C4EBF/libtatsu.xcframework.zip", checksum: "617a0248cb39b8dc2c8643967a88354ca8762d0c98a76144f5504c5d32468760"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E4A42403-F720-48C2-B769-F4CB321C4EBF/libusbmuxd.xcframework.zip", checksum: "f5c7d55a948d9b3488a211d56ef03ccdb0fc697641044cfa4b6d0536f2bda8f8"),
    ]
)

