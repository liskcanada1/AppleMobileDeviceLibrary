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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2C1B6B59-E6C8-480F-BD3D-BF24B2A23AE5/libimobiledevice.xcframework.zip", checksum: "0dc1d7e6d7ab41fb1fa4e05f2bad48658d18b1f23d74a388c6879afa4fc5858a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2C1B6B59-E6C8-480F-BD3D-BF24B2A23AE5/libimobiledevice_glue.xcframework.zip", checksum: "7164ace77d9a3c56aa65d4031835f3f86ebe4f649d4b541d2962a1d9eed2f0be"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2C1B6B59-E6C8-480F-BD3D-BF24B2A23AE5/libplist.xcframework.zip", checksum: "3698840871ae187fe82a8111d3c867d00398ce5aa9ea107d2ea4cc34dd2dbbb7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2C1B6B59-E6C8-480F-BD3D-BF24B2A23AE5/libtatsu.xcframework.zip", checksum: "4774e1ef0a055b6684db142d96dc7595b7cc12c3a05236b39e44dbaeae21e248"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2C1B6B59-E6C8-480F-BD3D-BF24B2A23AE5/libusbmuxd.xcframework.zip", checksum: "112a59a2d6a91eb6c220109e7e8cea8eff8b9d3cf5064de3da13d0558a8d4214"),
    ]
)

