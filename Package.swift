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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC0EA5CC-A410-4D4A-BAB7-CA734618C2FF/libimobiledevice.xcframework.zip", checksum: "47b6c970fcc6c422f082ca8e3a232a30d7c76b9921752b23643440a525499e58"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC0EA5CC-A410-4D4A-BAB7-CA734618C2FF/libimobiledevice_glue.xcframework.zip", checksum: "166cac95576f054e3ad6ed34e0c5a7ee0bd115c1a9cda011b22d7d48f3d5bbae"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC0EA5CC-A410-4D4A-BAB7-CA734618C2FF/libplist.xcframework.zip", checksum: "02860ba7bf829f099354d71f5e438ab5ebe937f6f1b71f7428af04dbdbaba177"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC0EA5CC-A410-4D4A-BAB7-CA734618C2FF/libtatsu.xcframework.zip", checksum: "b3d56fe6fa457261a56712a44d999bec22c5463365e6e77143809c60399ba9d9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC0EA5CC-A410-4D4A-BAB7-CA734618C2FF/libusbmuxd.xcframework.zip", checksum: "9d9778cba876f2b5f3d50f94cd1efc5d83b7ac1407652de803e4051362329322"),
    ]
)

