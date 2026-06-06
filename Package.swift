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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E5251F67-7103-44BC-8867-A7B88AE30D3B/libimobiledevice.xcframework.zip", checksum: "9c0cfdf7e047a5d83fd0eb51d2478daf1574fddaad226c19c733a74fd15fa1d2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E5251F67-7103-44BC-8867-A7B88AE30D3B/libimobiledevice_glue.xcframework.zip", checksum: "e34fd56eacf467d41b95589d7842c194d322f2888c8020c2c77dc760ef63ef13"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E5251F67-7103-44BC-8867-A7B88AE30D3B/libplist.xcframework.zip", checksum: "d025d9badee648f5f73f69cb51193491c43819ea58804147000789fa400647c2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E5251F67-7103-44BC-8867-A7B88AE30D3B/libtatsu.xcframework.zip", checksum: "8b35d85445acb7c2f3d136a1f28d33c53d34e6b22d4636e8612eba9a028592de"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E5251F67-7103-44BC-8867-A7B88AE30D3B/libusbmuxd.xcframework.zip", checksum: "a25a3781873d29103af0b5a309c7dbf54ee87a74369fb845fb95e6046765b2d7"),
    ]
)

