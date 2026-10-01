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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC61B756-6E6A-40F4-9A51-5F3618A0BD51/libimobiledevice.xcframework.zip", checksum: "4e149a7f9c8eae510acce6bd9cca29cf8d1d18b435c5b364e711e8a615ab8586"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC61B756-6E6A-40F4-9A51-5F3618A0BD51/libimobiledevice_glue.xcframework.zip", checksum: "4ad90674ecb8630b72a46562beaab62e85b33f53e3807045997b3ec3c71b198f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC61B756-6E6A-40F4-9A51-5F3618A0BD51/libplist.xcframework.zip", checksum: "17dc5c85870d4311889c08a44ed4520db3142c846ab689187df0273e9fae4321"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC61B756-6E6A-40F4-9A51-5F3618A0BD51/libtatsu.xcframework.zip", checksum: "4c3b28b956f8ca4bb2ccf1aedca0348bdc7d8470d2bb0fe57d56a438e82d3b54"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC61B756-6E6A-40F4-9A51-5F3618A0BD51/libusbmuxd.xcframework.zip", checksum: "901ea110b18613b58ac8225fdc552c944c09f98d8eba04b6c08f99c485edcfa7"),
    ]
)

