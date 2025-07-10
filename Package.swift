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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.551660E9-4F0D-4EFF-90E7-0305C4850317/libimobiledevice.xcframework.zip", checksum: "a6dca377faee06d9b23684d5c35028a0b82f96eb38a213be82b784741caf79e3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.551660E9-4F0D-4EFF-90E7-0305C4850317/libimobiledevice_glue.xcframework.zip", checksum: "fc3badc0546614269a8b34201ba8237f14e776d7141173da5f10c733075ccd55"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.551660E9-4F0D-4EFF-90E7-0305C4850317/libplist.xcframework.zip", checksum: "691fb7a2a00eaa6dde3267112fc69178b42ac4752ef3e20e103afea7ce449505"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.551660E9-4F0D-4EFF-90E7-0305C4850317/libtatsu.xcframework.zip", checksum: "817f0a0f996d8cef5dfb994358d42cf6aa974901a2981d2f82d2dc8d995f7a53"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.551660E9-4F0D-4EFF-90E7-0305C4850317/libusbmuxd.xcframework.zip", checksum: "1414b002c2a13d25d2bdabe84e5aef4ba0385a7d3e3a4c02d0b973a167b4a725"),
    ]
)

