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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6514336A-66B9-45F9-B6E7-0A6956BAC929/libimobiledevice.xcframework.zip", checksum: "cc6963d67b0a8d5d06a57e936505855a80618fd53f527096bad7393599551d77"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6514336A-66B9-45F9-B6E7-0A6956BAC929/libimobiledevice_glue.xcframework.zip", checksum: "6dcf8c9973461256bbbb41a76cde468c486bed5582ee7c78121ec5708b3da118"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6514336A-66B9-45F9-B6E7-0A6956BAC929/libplist.xcframework.zip", checksum: "0152a07b2e12c7b22a97fa351e55c5e4f5c43193d7edc7352b9c28379d43af7b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6514336A-66B9-45F9-B6E7-0A6956BAC929/libtatsu.xcframework.zip", checksum: "1beecc94f85cb15247d81d22262b06712eb2dda3a1a9c5abb50ae62c95f7dfd9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6514336A-66B9-45F9-B6E7-0A6956BAC929/libusbmuxd.xcframework.zip", checksum: "9ebc918ef202e22c2c05ba54ad20946a14600e1ba6ff4a3785f90db4b9073f9a"),
    ]
)

