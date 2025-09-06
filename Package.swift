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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B3AB975B-179B-45C9-BD6A-BF54F5BCD81A/libimobiledevice.xcframework.zip", checksum: "5db2fdba2d60445533b554fbec8739c87cbe1f63f5fe9fe65d865d992762bb42"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B3AB975B-179B-45C9-BD6A-BF54F5BCD81A/libimobiledevice_glue.xcframework.zip", checksum: "ddfbc1a60fa0410752fa4835057125e5e3da29ac654465c37ad0ca9fce6b772c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B3AB975B-179B-45C9-BD6A-BF54F5BCD81A/libplist.xcframework.zip", checksum: "a16c8dafcbe8c4ad8268786177be7d0bed1b10db72c432a8d706af7456ff6a27"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B3AB975B-179B-45C9-BD6A-BF54F5BCD81A/libtatsu.xcframework.zip", checksum: "6223d0432bac069eeabfa6dd62f848df450435204d1c738cc397535e3d9c625f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B3AB975B-179B-45C9-BD6A-BF54F5BCD81A/libusbmuxd.xcframework.zip", checksum: "931f6811f5e2d04e0140f62d6cbf3c9fe04f8d77cf42d201579670cd1eeb9b3a"),
    ]
)

