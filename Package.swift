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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35CB7C69-9C91-47A8-8509-52FB8454AFC6/libimobiledevice.xcframework.zip", checksum: "afb6be311acae188bfef75934665c164bc0b3d1ce1f759bb30e74d6564ab63c8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35CB7C69-9C91-47A8-8509-52FB8454AFC6/libimobiledevice_glue.xcframework.zip", checksum: "197aa02229d4bea320a380bd3970bb73f29215eab2272fb2ecd4b4d8653679b6"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35CB7C69-9C91-47A8-8509-52FB8454AFC6/libplist.xcframework.zip", checksum: "21ab56d73d6a99039b3c7de9ad1a1e636d53153ebeb86edfc6722c84466ef06a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35CB7C69-9C91-47A8-8509-52FB8454AFC6/libtatsu.xcframework.zip", checksum: "eb298daa467254dd2013e70f0c981909da39e6e9297cd54083b90cda2c08958d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.35CB7C69-9C91-47A8-8509-52FB8454AFC6/libusbmuxd.xcframework.zip", checksum: "dbb2343cfb12eab0865db4cad47c8c74deaae591cd725594443bae7b2b0ca4d4"),
    ]
)

