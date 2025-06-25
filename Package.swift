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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7D09FCC9-0962-4FAF-A9AD-2F7AC4C2E25E/libimobiledevice.xcframework.zip", checksum: "b3e42edf89f0ac4022dad0d54e530cd1c841ad2471cd418baada4e2a49c8828d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7D09FCC9-0962-4FAF-A9AD-2F7AC4C2E25E/libimobiledevice_glue.xcframework.zip", checksum: "d21f63bdcc9c41268ca86630ec8580182a9405c992ea43bee6752f38f1417db1"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7D09FCC9-0962-4FAF-A9AD-2F7AC4C2E25E/libplist.xcframework.zip", checksum: "846f5cc49f76f460e80716539a3b88586841a4191e4bde4d263396271262beb6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7D09FCC9-0962-4FAF-A9AD-2F7AC4C2E25E/libtatsu.xcframework.zip", checksum: "4f085bb2ae288f0d4b89201201d480334a25de2ed8cdde1d303087c4e7b9c217"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7D09FCC9-0962-4FAF-A9AD-2F7AC4C2E25E/libusbmuxd.xcframework.zip", checksum: "7600a23e00f73ead6b0d8641fd53def74b0aea04d87c4e9a3894b866cecc6a8e"),
    ]
)

