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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39D0ADA7-289D-4071-A695-9CEFB31798EA/libimobiledevice.xcframework.zip", checksum: "8686c9ea11ab0c22bb85b3df26f098c616004cc390e7f5b212bf74e9b2a8b422"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39D0ADA7-289D-4071-A695-9CEFB31798EA/libimobiledevice_glue.xcframework.zip", checksum: "fb93f2ad53a8680235421e70f6b08f1d498164a6228241a141917d5e8551f2b2"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39D0ADA7-289D-4071-A695-9CEFB31798EA/libplist.xcframework.zip", checksum: "5b903cc70666ffc3e75b58efd489a141411fe522354119f6bcc1503f2c9e21ae"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39D0ADA7-289D-4071-A695-9CEFB31798EA/libtatsu.xcframework.zip", checksum: "5347e4a29b25f4eae9da4486cba9657ef93054056fd76e1cdcc3efd3c68e255f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.39D0ADA7-289D-4071-A695-9CEFB31798EA/libusbmuxd.xcframework.zip", checksum: "6eef7cf496a3ec356b8bf98a9e9d9af1beede6cb2860eb76e1665cefce7e971f"),
    ]
)

