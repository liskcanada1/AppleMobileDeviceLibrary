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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.02470606-3544-45EE-8609-ED4FB334E985/libimobiledevice.xcframework.zip", checksum: "a6e0b833f2a7b5a79e3c8b049eb23f9038210f622d3cc2b7f372cc6f7234669e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.02470606-3544-45EE-8609-ED4FB334E985/libimobiledevice_glue.xcframework.zip", checksum: "a9dea8e610b1012259b220051180f96e771ca41a8ee627811f697f463f143d32"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.02470606-3544-45EE-8609-ED4FB334E985/libplist.xcframework.zip", checksum: "f50d8f424ae2fb4bfd756c2129be63dd58c414c9c2383d6eff397f9b85b51a57"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.02470606-3544-45EE-8609-ED4FB334E985/libtatsu.xcframework.zip", checksum: "77de43be1064569d6e2ad3d61fafc5090fc9f4ea345ae8d6c32bfc57c57b135a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.02470606-3544-45EE-8609-ED4FB334E985/libusbmuxd.xcframework.zip", checksum: "a96fa8f377cb889f03eb523e575bd5457951a5c87554a8fbb40fa4cf5694e166"),
    ]
)

