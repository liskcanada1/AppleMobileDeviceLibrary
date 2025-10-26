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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.45ABA0FC-DE6A-404A-B52B-0522B057726A/libimobiledevice.xcframework.zip", checksum: "e9b9f3cb55d7fe0e3141e7744aecf6b16d1d4e93eeed71591c35ed6c6ebce1ec"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.45ABA0FC-DE6A-404A-B52B-0522B057726A/libimobiledevice_glue.xcframework.zip", checksum: "5aa56ec81c68011003d2a9c1f6ffb6db9ac815a01f4701114ad384452f43fb2b"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.45ABA0FC-DE6A-404A-B52B-0522B057726A/libplist.xcframework.zip", checksum: "4bff0d747fcb85397662110eb2b1b819c093cfa1323bfc293d9c5e3f46e816e3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.45ABA0FC-DE6A-404A-B52B-0522B057726A/libtatsu.xcframework.zip", checksum: "e40a5999ff6f869caf45a5a1e48d33d13e694bcc210da219bc429057543ee26f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.45ABA0FC-DE6A-404A-B52B-0522B057726A/libusbmuxd.xcframework.zip", checksum: "f2dc8e0bf28c0e30414b9239d1200a2627881f8f0d2eb820c68ed223a559bff7"),
    ]
)

