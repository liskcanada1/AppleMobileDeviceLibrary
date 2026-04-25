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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.758ACBB1-AE9A-4FEE-AB96-E838A810EFBD/libimobiledevice.xcframework.zip", checksum: "17c86d85f4427ec3b592a30525cafc2e68964f5825c8c2b3073079934be67ac7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.758ACBB1-AE9A-4FEE-AB96-E838A810EFBD/libimobiledevice_glue.xcframework.zip", checksum: "997cdadc83363051661872e1292b64640b524dce5440a2f5bc5e2270ab8a858a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.758ACBB1-AE9A-4FEE-AB96-E838A810EFBD/libplist.xcframework.zip", checksum: "65174953b2c3927a5ce1719175d89cd602480b26c82ae19f0db6d2d2468a3570"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.758ACBB1-AE9A-4FEE-AB96-E838A810EFBD/libtatsu.xcframework.zip", checksum: "b2345b9638aae23d3590037c33a0b2015770d61bc33e130732c78d88bb3a72d1"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.758ACBB1-AE9A-4FEE-AB96-E838A810EFBD/libusbmuxd.xcframework.zip", checksum: "b934456c9f7ebac926fc9b360608f6556ab39167e121a6572827372d4168f888"),
    ]
)

