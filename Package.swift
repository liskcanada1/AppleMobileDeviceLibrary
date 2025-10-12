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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.38848D0A-FECB-40FE-8B6D-CBDF43AB4B16/libimobiledevice.xcframework.zip", checksum: "3631c5367f4502f62c31bd395de9ff9feccab1a692a681d3669c876e8fd23aaa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.38848D0A-FECB-40FE-8B6D-CBDF43AB4B16/libimobiledevice_glue.xcframework.zip", checksum: "2f0246b12a6f66fa3c0c6386b96aeb0159cd20f3cebf378e5a8face43cf16094"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.38848D0A-FECB-40FE-8B6D-CBDF43AB4B16/libplist.xcframework.zip", checksum: "c849838e6c284e38a274373f00f317735a7ee0170d42d45dc84b1c0f3097b095"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.38848D0A-FECB-40FE-8B6D-CBDF43AB4B16/libtatsu.xcframework.zip", checksum: "c84f703a8ac2da3335769779a4cda075e6762a0386d4359b476941bd368b75dc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.38848D0A-FECB-40FE-8B6D-CBDF43AB4B16/libusbmuxd.xcframework.zip", checksum: "596b0f58d25929407e8d819f37afd9f143b0cf799b8d3277195d1827e1a0c422"),
    ]
)

