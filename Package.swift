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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7CF57C39-EB27-468F-9FA9-F27550F6CC2F/libimobiledevice.xcframework.zip", checksum: "baa5da68f8df952c8149eedbe2b34c5e293cc494b919270d5eadf88fa9c2943b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7CF57C39-EB27-468F-9FA9-F27550F6CC2F/libimobiledevice_glue.xcframework.zip", checksum: "7675cda1cdf2433de9197d2979da9ec6850178cd79a3f7089661a13dfdfe5770"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7CF57C39-EB27-468F-9FA9-F27550F6CC2F/libplist.xcframework.zip", checksum: "c40176a7fdd938e46774c13ada2c4683dc36277e42f50f1a9f95625725cf0631"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7CF57C39-EB27-468F-9FA9-F27550F6CC2F/libtatsu.xcframework.zip", checksum: "108f525191b1480e0efccc76ae6c7038c6a2965d2832c7d9d74fadde8707a81f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7CF57C39-EB27-468F-9FA9-F27550F6CC2F/libusbmuxd.xcframework.zip", checksum: "396c54a2cf41b4af8311ab013c6577846a64902f55f2b59d22029e6fa7ceeabb"),
    ]
)

