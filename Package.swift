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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C6D89B5F-66C1-4A65-B6C8-9786C38D8195/libimobiledevice.xcframework.zip", checksum: "465bd4ecb5e851b8ef099a03eb6aaac9e9f9473f218b8b4546c68f28df0b7c3f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C6D89B5F-66C1-4A65-B6C8-9786C38D8195/libimobiledevice_glue.xcframework.zip", checksum: "7b17a5d9b2f279e9e4fd28bccd95d293a0df2e823591b95de147ed9f42af11fc"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C6D89B5F-66C1-4A65-B6C8-9786C38D8195/libplist.xcframework.zip", checksum: "4b1fde4f675c6178f9718085b1bf719b37b84aec9205e387bc469ac628da3ba5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C6D89B5F-66C1-4A65-B6C8-9786C38D8195/libtatsu.xcframework.zip", checksum: "f412972b4b5df67f1a9cd292cbd9c4fca2adff71a204509cb1c5dd0d322a1bdc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C6D89B5F-66C1-4A65-B6C8-9786C38D8195/libusbmuxd.xcframework.zip", checksum: "cb04ee4d29b5d8ba32ad2645bc4a067f3c87e20bfec6a7ea49a1a02b2853b117"),
    ]
)

