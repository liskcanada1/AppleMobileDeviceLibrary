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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9CBE1028-728E-4ECB-B32F-71C6ACBEFA69/libimobiledevice.xcframework.zip", checksum: "c17ea002774eb64bdf72b868c3d64c943fe6b3bcdc37925e6a760de9ec13785b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9CBE1028-728E-4ECB-B32F-71C6ACBEFA69/libimobiledevice_glue.xcframework.zip", checksum: "0ca24accbd5f06c1c836340d5a85fbcc770232a26c37e0259d51b17e7d66a00a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9CBE1028-728E-4ECB-B32F-71C6ACBEFA69/libplist.xcframework.zip", checksum: "2564493940ba3be1aca1b08bd6a02564d3dc8ceca7e773ba12ff99d76b878b6a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9CBE1028-728E-4ECB-B32F-71C6ACBEFA69/libtatsu.xcframework.zip", checksum: "80315e93cd49685572b22d171c2d10ee5a63e22b24caee087516c4c1ecccaec6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9CBE1028-728E-4ECB-B32F-71C6ACBEFA69/libusbmuxd.xcframework.zip", checksum: "c01d137eaaae4365083c4175e2fdcffbad84c82d2f1e56f439e824250ecfb528"),
    ]
)

