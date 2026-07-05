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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.438B599E-3A6D-4974-95A3-04E125B99785/libimobiledevice.xcframework.zip", checksum: "10c459bab661be959bd11093bbdc5dda63a2824ae1da06a2ca5ed4a97214b25f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.438B599E-3A6D-4974-95A3-04E125B99785/libimobiledevice_glue.xcframework.zip", checksum: "8de4fbb6ef45c53d4373c3c62f92fb0aa49f4497f795c762614fa152453331ad"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.438B599E-3A6D-4974-95A3-04E125B99785/libplist.xcframework.zip", checksum: "7fc93a640be0adea2c16f97eb9b73d62b4c8c045ca919d616ecfcfbb099dbae3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.438B599E-3A6D-4974-95A3-04E125B99785/libtatsu.xcframework.zip", checksum: "e359b02be3dce567e11af073454c592d764afda872ac06f5d62cf38188af105a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.438B599E-3A6D-4974-95A3-04E125B99785/libusbmuxd.xcframework.zip", checksum: "c32bca951b7bf2ee176d02fabcf6699a756e07c833948b4999ac572c624b1077"),
    ]
)

