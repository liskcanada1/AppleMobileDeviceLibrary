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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.948209C9-7DD5-4C93-9B34-86F3FC7DF7BE/libimobiledevice.xcframework.zip", checksum: "e2c38b3c37f038cf4a0c0749176a1858d9f2ad0f09db986d1f5034ffa29957de"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.948209C9-7DD5-4C93-9B34-86F3FC7DF7BE/libimobiledevice_glue.xcframework.zip", checksum: "51d93c0e6defab34dcbf1f278d70daea673561175ea4be1ec9135467e78e5cee"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.948209C9-7DD5-4C93-9B34-86F3FC7DF7BE/libplist.xcframework.zip", checksum: "77e0d3608e53072fadfd34e41c238cc8bbd716d1f6d76a3bdf3bf91e348e12bf"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.948209C9-7DD5-4C93-9B34-86F3FC7DF7BE/libtatsu.xcframework.zip", checksum: "7a8c6f3d15ab8ad7e6f26f250cd7ce2689fb8c6327803836595a613e774e509a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.948209C9-7DD5-4C93-9B34-86F3FC7DF7BE/libusbmuxd.xcframework.zip", checksum: "3b9af93609ace2196db0adb12dcd6c9c735d382d95408178c80b950c402938a0"),
    ]
)

