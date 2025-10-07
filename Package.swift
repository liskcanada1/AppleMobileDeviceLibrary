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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2E7A0B01-5C23-4132-8EF6-0C525CF1DD81/libimobiledevice.xcframework.zip", checksum: "8d9c8eae88ae19877e8ff034970cc2b4f5e3d342a22b0f2de441da8afbd32470"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2E7A0B01-5C23-4132-8EF6-0C525CF1DD81/libimobiledevice_glue.xcframework.zip", checksum: "aa8ae09c3e1c1c84058defa86cf73a4ec0c7748d62cca0a61743822a8e6a0824"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2E7A0B01-5C23-4132-8EF6-0C525CF1DD81/libplist.xcframework.zip", checksum: "38eac333ece34cd28e68813f1455ab56ca42ded2b9d4ec40ae6a9df37aac0874"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2E7A0B01-5C23-4132-8EF6-0C525CF1DD81/libtatsu.xcframework.zip", checksum: "8f78fa462888c9110da04adaaa9f2b44ea809fa8bd871cc1a7656e4358d40b16"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2E7A0B01-5C23-4132-8EF6-0C525CF1DD81/libusbmuxd.xcframework.zip", checksum: "8c56659292d57604ccd952a8ce3c355e65103027cb925e709c6dd91b9af28517"),
    ]
)

