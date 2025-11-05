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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.884481B5-1AE8-4A5A-83F9-C6F08A68EC80/libimobiledevice.xcframework.zip", checksum: "0f785749ee760c7fc8547a579b531e1c0f5c07cb4ddec90dd3504359f2b006d8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.884481B5-1AE8-4A5A-83F9-C6F08A68EC80/libimobiledevice_glue.xcframework.zip", checksum: "95f61e03b4724efbcf9a29c04143a9b782e7f8be009324242cd459226bb16dfb"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.884481B5-1AE8-4A5A-83F9-C6F08A68EC80/libplist.xcframework.zip", checksum: "828c2e7b852c1a623f824d6071ce8fa6abd39ce99c45b2945e6c1418dbcaf3a5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.884481B5-1AE8-4A5A-83F9-C6F08A68EC80/libtatsu.xcframework.zip", checksum: "693c13c3509e846e0e22b4ccc56a9ed22caeb20213554e59ca5439765f186e03"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.884481B5-1AE8-4A5A-83F9-C6F08A68EC80/libusbmuxd.xcframework.zip", checksum: "0344618a8f567d1e6bac7f809e8e8315829df81089d40c60abc51bf9fa7d8e60"),
    ]
)

