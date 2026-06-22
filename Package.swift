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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39C85174-30C6-4490-BFC2-0F6543DA6451/libimobiledevice.xcframework.zip", checksum: "1dea2008be8221bfb0652e3ffe711e2dc8aa4456ed86a6a937c4f29d4bf16a84"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39C85174-30C6-4490-BFC2-0F6543DA6451/libimobiledevice_glue.xcframework.zip", checksum: "3e6123c650fff772659a9e96d27d88c1b58c0507c54939cf94b2fec988a49069"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39C85174-30C6-4490-BFC2-0F6543DA6451/libplist.xcframework.zip", checksum: "72d08942fc92834a258af00f2021c3c34d3975265f4a8bb819efd75792e42d71"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39C85174-30C6-4490-BFC2-0F6543DA6451/libtatsu.xcframework.zip", checksum: "c424c9554602e2bc90db7fa9cc521b5e10bb06de83f07253ea880673c32508f9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39C85174-30C6-4490-BFC2-0F6543DA6451/libusbmuxd.xcframework.zip", checksum: "e57b67ea8333f87e344637442345acef646241e29f0391f5e81a619a323bcd4c"),
    ]
)

