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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6155ABE1-E0D3-47E3-922A-51288CB5C25B/libimobiledevice.xcframework.zip", checksum: "b1748da09f669c5a1f7be913d338afd3e677a95ad8a0b5354b4480bdb035fd4e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6155ABE1-E0D3-47E3-922A-51288CB5C25B/libimobiledevice_glue.xcframework.zip", checksum: "efe1aa98629ec7bf93c51972706fc9fe46570bc0f58b4a77a943445d26ae212b"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6155ABE1-E0D3-47E3-922A-51288CB5C25B/libplist.xcframework.zip", checksum: "ac814af2c4be31f8b48fc183e34d1235e296b0ca7cb2b2d2a87bcad4f78cd340"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6155ABE1-E0D3-47E3-922A-51288CB5C25B/libtatsu.xcframework.zip", checksum: "f9957430147080d44206da8f9b022fe10b2760e9d8122f8a16b26bd6a6d1c3b4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6155ABE1-E0D3-47E3-922A-51288CB5C25B/libusbmuxd.xcframework.zip", checksum: "1fb0c1a62034fbf1dc4b5c0db0bc51fca09c8a31ddbfa4f820691f66f41c9d17"),
    ]
)

