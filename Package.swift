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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35753C56-6B23-4D90-AF09-73DE36E19755/libimobiledevice.xcframework.zip", checksum: "3e12ce742f8324d8c01000eafeaaa4e597f1f202e8b29c498e94a3dc93a4775f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35753C56-6B23-4D90-AF09-73DE36E19755/libimobiledevice_glue.xcframework.zip", checksum: "3bed87dca3512769dcbec5456405d138b6be94f217af26469a3165e891cc9567"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35753C56-6B23-4D90-AF09-73DE36E19755/libplist.xcframework.zip", checksum: "ac7643692e79f95962795a7f371f09a77fb16c43b37f5a827b8dd6f25c3d1529"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35753C56-6B23-4D90-AF09-73DE36E19755/libtatsu.xcframework.zip", checksum: "d5860f082cf293e3e12804456fb4e32a430b2624fcfafe579230073811f233e0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35753C56-6B23-4D90-AF09-73DE36E19755/libusbmuxd.xcframework.zip", checksum: "612e72738cfe2c72f524f0fa691830bf2adc1b16d687a5c4e68e278e7b07ae50"),
    ]
)

