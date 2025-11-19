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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9AADD6D4-8B25-4322-BD53-E06CFC692995/libimobiledevice.xcframework.zip", checksum: "47d065beed6927d03e6c61cbdb7a8196a761ec935cbccbb10d00859a8e3cb433"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9AADD6D4-8B25-4322-BD53-E06CFC692995/libimobiledevice_glue.xcframework.zip", checksum: "f7f33067f624a38063b752826a62520d66053ed0a3c3ce5a47884a439cdc9752"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9AADD6D4-8B25-4322-BD53-E06CFC692995/libplist.xcframework.zip", checksum: "c4e33deeaad690765d6efbbce5542188e81ce5d2619afff030d6cf172dedd258"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9AADD6D4-8B25-4322-BD53-E06CFC692995/libtatsu.xcframework.zip", checksum: "6680d92dcf1ccacb35fb0a7c791660d4cc2485da1803da6beef7d3773f6ce04f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9AADD6D4-8B25-4322-BD53-E06CFC692995/libusbmuxd.xcframework.zip", checksum: "79afc913b4bc6b1b2e3a2c14068a0f2320b41a7597a0455d41d12943b2628b70"),
    ]
)

