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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.04C07223-9B2C-4070-AF05-D18C375877DB/libimobiledevice.xcframework.zip", checksum: "f1703825c00abff4e8f5163cdd5f0d097e2e57b908b718ef5b4645ab7cf1512d"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.04C07223-9B2C-4070-AF05-D18C375877DB/libimobiledevice_glue.xcframework.zip", checksum: "429483de08287b357965159e118c3d62d8dc4a9018af678cc61fa27ced4b0229"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.04C07223-9B2C-4070-AF05-D18C375877DB/libplist.xcframework.zip", checksum: "852e566b1af80018660dd0814965e8f3b2e9aee842e94ab3c620c61fa911b18e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.04C07223-9B2C-4070-AF05-D18C375877DB/libtatsu.xcframework.zip", checksum: "d3ab83e245ac50aad24a3602a8c0bf8769c0e14d561fcccd44f1cb523395d452"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.04C07223-9B2C-4070-AF05-D18C375877DB/libusbmuxd.xcframework.zip", checksum: "b8fc2bd0347242fe3660f5a4e6cfdb20c0f16dce4e53f6fee838f726e045ebec"),
    ]
)

