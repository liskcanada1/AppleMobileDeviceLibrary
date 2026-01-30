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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5693565A-DB1C-4B66-8DE0-A1AE475487F2/libimobiledevice.xcframework.zip", checksum: "143d8058b96d652c8814d85b02bc04098b794a4756ba2e610bb13b6490441f58"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5693565A-DB1C-4B66-8DE0-A1AE475487F2/libimobiledevice_glue.xcframework.zip", checksum: "cef2f6cb0d0b6ebb3ab59cbd6a5f0bfc1b49c4765c85a037fadad5504f47d93f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5693565A-DB1C-4B66-8DE0-A1AE475487F2/libplist.xcframework.zip", checksum: "467c9f7212bdbadeb0b36f2e48e0aa24a859fab3a2d21bb1a0252fa0af136c6d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5693565A-DB1C-4B66-8DE0-A1AE475487F2/libtatsu.xcframework.zip", checksum: "344fa398ead4bf788e50bb0bab3051eeee05cd9876ec6ce59602b11999598106"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5693565A-DB1C-4B66-8DE0-A1AE475487F2/libusbmuxd.xcframework.zip", checksum: "708aefd3073ceb53cc683a041521cb5daf0763b82e144edfa445ffb763d7e775"),
    ]
)

