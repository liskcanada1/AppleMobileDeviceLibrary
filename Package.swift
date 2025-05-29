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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.15246E96-17BE-478E-9F90-7A0B7C912D48/libimobiledevice.xcframework.zip", checksum: "d597f7a37a1fae3db869abee32279e58f784a1ad9f07b060137b9a4c5c05248a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.15246E96-17BE-478E-9F90-7A0B7C912D48/libimobiledevice_glue.xcframework.zip", checksum: "d0d46abb2c7deb0586abbbc18c54d5bd8e1bdad1bd0b1cb5ee6e7ea4d7df1518"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.15246E96-17BE-478E-9F90-7A0B7C912D48/libplist.xcframework.zip", checksum: "c12fec26ff7c90546a2ad419d73be959e6fbcc21414b5b7ab50e1e807a1ae40f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.15246E96-17BE-478E-9F90-7A0B7C912D48/libtatsu.xcframework.zip", checksum: "d22929b451ad97e73589543dc759153d9c35b5a795f620d04b2d4227547aea1b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.15246E96-17BE-478E-9F90-7A0B7C912D48/libusbmuxd.xcframework.zip", checksum: "c7ca5c5b2cf1037f0e0b5471b205270c5f8885c4a38fade95c3d549f7183c624"),
    ]
)

