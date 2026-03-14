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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3C243C7-8FA6-42C8-B3CD-D2202F860EF6/libimobiledevice.xcframework.zip", checksum: "950ef8c6188f06c08b2944798812893ff2a8836b5a7e9c58bb90fb590c8ed7aa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3C243C7-8FA6-42C8-B3CD-D2202F860EF6/libimobiledevice_glue.xcframework.zip", checksum: "4565dc56dae788e6b0599985134a26933f045d4205dc5696fe3354a168869ccd"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3C243C7-8FA6-42C8-B3CD-D2202F860EF6/libplist.xcframework.zip", checksum: "9eec592b3b7099f8bb4cb9a9d9a741571d5210de2f4b4ed689b6f2e4a3fbe5ec"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3C243C7-8FA6-42C8-B3CD-D2202F860EF6/libtatsu.xcframework.zip", checksum: "f4723e040d266249c49dd59a4e120be9c141212049163335ea01cecfdcecc33c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3C243C7-8FA6-42C8-B3CD-D2202F860EF6/libusbmuxd.xcframework.zip", checksum: "59e38b155f738d22f38b4de0be56239dd91c989f99c099aeccb8c2f35ea471ce"),
    ]
)

