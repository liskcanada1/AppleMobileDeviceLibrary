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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F802566A-5CB6-4622-ADF8-3B3A03B7C5CB/libimobiledevice.xcframework.zip", checksum: "b167f4bdf494eb7a77019d0b79cadba43d63560c3e8a629f1d67e3dd55219942"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F802566A-5CB6-4622-ADF8-3B3A03B7C5CB/libimobiledevice_glue.xcframework.zip", checksum: "ba1a68086afc3c55adfb4c26d751f038e2b004c848362fb09b69fd0d75f70680"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F802566A-5CB6-4622-ADF8-3B3A03B7C5CB/libplist.xcframework.zip", checksum: "598b8c82e5e4b32fe03b1295d90da3a12e89bf587f6f0074412427c9ed4bbb64"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F802566A-5CB6-4622-ADF8-3B3A03B7C5CB/libtatsu.xcframework.zip", checksum: "c9694a54fbb0081201c466300ac51a9df8d51cf4d865bae3adbddde7622cdeca"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F802566A-5CB6-4622-ADF8-3B3A03B7C5CB/libusbmuxd.xcframework.zip", checksum: "dae714f8b4852d9e48a68fd1e8a93faabadf76cd013874a962ea7946e20f3cc4"),
    ]
)

