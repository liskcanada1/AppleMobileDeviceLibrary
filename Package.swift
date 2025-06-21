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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E149C97-8F48-4AD5-8942-4CAC617B0ADD/libimobiledevice.xcframework.zip", checksum: "a6170235c34cace75d106b65b1b8bc0df667ac2af789a44e22fbc5a959fe20c8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E149C97-8F48-4AD5-8942-4CAC617B0ADD/libimobiledevice_glue.xcframework.zip", checksum: "28a44c11c54cd7bac871a53144549a4fd133949e0553f725da7409279148ab4c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E149C97-8F48-4AD5-8942-4CAC617B0ADD/libplist.xcframework.zip", checksum: "e56a69bbcf5cb247441a817a230e6a32a426b2b319cabe55078904bfb620e06c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E149C97-8F48-4AD5-8942-4CAC617B0ADD/libtatsu.xcframework.zip", checksum: "b08ee8843ab467d6bde07a8a0d3029152054e2a9be6554b7ceadd0fa54ea2c0e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E149C97-8F48-4AD5-8942-4CAC617B0ADD/libusbmuxd.xcframework.zip", checksum: "cf53a46861efcb008b92f7f47baad4fc45891d91f076bebaa800e1e83814871b"),
    ]
)

