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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8CE78333-EAD6-43C1-964B-DB48BBCA06A0/libimobiledevice.xcframework.zip", checksum: "c160615c1a452988de6abc6393036ebb85e8bd4b666f40a9df85101a6be73bf8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8CE78333-EAD6-43C1-964B-DB48BBCA06A0/libimobiledevice_glue.xcframework.zip", checksum: "3ebbb8d71fc8bd5c996a20982680d0c01b7fb9a2e993c3b4192d1f53fd61b40c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8CE78333-EAD6-43C1-964B-DB48BBCA06A0/libplist.xcframework.zip", checksum: "e72abff238aa949eb84de1ffc5c1ecd703594d8a7bcbce68cbf6e8f9c44754ba"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8CE78333-EAD6-43C1-964B-DB48BBCA06A0/libtatsu.xcframework.zip", checksum: "13a516b123ffa328233b13769a5cb870d98750b7a70a4872b681b6e5d44129e2"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8CE78333-EAD6-43C1-964B-DB48BBCA06A0/libusbmuxd.xcframework.zip", checksum: "3598c59034123d0930bc689403fbbe0b851b3619766df278ad4a4b37d1ae4317"),
    ]
)

