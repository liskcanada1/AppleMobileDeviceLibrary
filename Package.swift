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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.42A49D44-56E4-4F40-8FED-094E642C99CD/libimobiledevice.xcframework.zip", checksum: "b55f552520d84a3ec90937b46f60a0feff651d8ea4c6c5d29fc80eb59c52c96c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.42A49D44-56E4-4F40-8FED-094E642C99CD/libimobiledevice_glue.xcframework.zip", checksum: "7797fbc44a73771739bffd77e159faf479969b7df7062e619dc59ac4f542bc77"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.42A49D44-56E4-4F40-8FED-094E642C99CD/libplist.xcframework.zip", checksum: "81fa7bc41e62fa73b05482be09091b467c02cc9d5d3f2f55d3461493ac75df35"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.42A49D44-56E4-4F40-8FED-094E642C99CD/libtatsu.xcframework.zip", checksum: "e74cd012d6cf1d1a356215e69e0931ccc345d4ae724c8af8a235d8dfd0b976cd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.42A49D44-56E4-4F40-8FED-094E642C99CD/libusbmuxd.xcframework.zip", checksum: "b4bfea3a1ce1f3edceb09fe1671e2ea4f55e62d060d77784a6a4208195c21819"),
    ]
)

