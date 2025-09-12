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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D0CAD5A4-43C0-4E4F-AEC6-1B33A0778418/libimobiledevice.xcframework.zip", checksum: "7e53c062a4eface02824b179e47e5f6583aebd62ffd4bb8f4cdf79732a8125aa"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D0CAD5A4-43C0-4E4F-AEC6-1B33A0778418/libimobiledevice_glue.xcframework.zip", checksum: "43250f642fcc0a12954decc603a7e3e84597f1eca850645604d4872113b42f33"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D0CAD5A4-43C0-4E4F-AEC6-1B33A0778418/libplist.xcframework.zip", checksum: "14867764edb10015e4257e49550f956ed3a27d67b9cfed891f9eeb8242908975"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D0CAD5A4-43C0-4E4F-AEC6-1B33A0778418/libtatsu.xcframework.zip", checksum: "3939288c95ee68305fcd0c81b339442eb77f94cad6b4e6f7b214055439c418b6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D0CAD5A4-43C0-4E4F-AEC6-1B33A0778418/libusbmuxd.xcframework.zip", checksum: "dd5745be2d4a72039babc2b3ce66c9ffd31a4f1daba886cb9a94fa413585fd7c"),
    ]
)

