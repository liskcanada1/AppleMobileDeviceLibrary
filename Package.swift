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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F846A69D-B2A1-49C6-A566-0C63098C8603/libimobiledevice.xcframework.zip", checksum: "bbc5813d31b5cc11c413e89d65715e49e0276e9c593f99f4806d07f0d5f1ed97"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F846A69D-B2A1-49C6-A566-0C63098C8603/libimobiledevice_glue.xcframework.zip", checksum: "88a89907a0c69718b2909adb12e4700c57e1d274d27e361cb84403d3ab7050f1"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F846A69D-B2A1-49C6-A566-0C63098C8603/libplist.xcframework.zip", checksum: "d5b1abf11b711fa7b5a6776dfcb485f3f046b1946d06aae27b3ba80174101506"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F846A69D-B2A1-49C6-A566-0C63098C8603/libtatsu.xcframework.zip", checksum: "9aafc23bfec45a1f28590e9b061045c4ec901070b08c35d8dd244ec08e8cde99"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F846A69D-B2A1-49C6-A566-0C63098C8603/libusbmuxd.xcframework.zip", checksum: "6cb130e69990855d174d7c4e87850f00aa5c536c0b0252f78764054c1d223718"),
    ]
)

