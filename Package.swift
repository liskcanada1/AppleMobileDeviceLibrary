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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1525F72A-F407-4CD4-B058-AC86D15A90D3/libimobiledevice.xcframework.zip", checksum: "05f9aa346fe31508f4b0e6387d46ea7c903530bb2a5d9b8594bb7ddf52b57e8d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1525F72A-F407-4CD4-B058-AC86D15A90D3/libimobiledevice_glue.xcframework.zip", checksum: "05ae90edda36ee64b20458c7ba20647824eb655bc185a07097adfeeeea3d2de3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1525F72A-F407-4CD4-B058-AC86D15A90D3/libplist.xcframework.zip", checksum: "6f75662bed727da81bc28edbd5485203e5ddeac5d4ca9028a3383eaaa3bc91ec"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1525F72A-F407-4CD4-B058-AC86D15A90D3/libtatsu.xcframework.zip", checksum: "c6d19bdfc132cd03d6f154bb103a4b2e3bb5d1a2cdf0617552e10746ec2a1899"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1525F72A-F407-4CD4-B058-AC86D15A90D3/libusbmuxd.xcframework.zip", checksum: "73213fd0a2ad4d2aa0e1335f95050f00fb4cbbce591120daa0c8478f6c4a7f71"),
    ]
)

