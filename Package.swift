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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.93F4DFCE-5F12-4751-8BC5-AC8C2741A9B0/libimobiledevice.xcframework.zip", checksum: "1bde8fd651e4ee77accb1801eeeee22f03a9ab91435c0e7fec0207897e8ce6ff"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.93F4DFCE-5F12-4751-8BC5-AC8C2741A9B0/libimobiledevice_glue.xcframework.zip", checksum: "b3ae5ad313777996fa28898a5a645b849ad406acbc7441bedcb1461f0853a9fd"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.93F4DFCE-5F12-4751-8BC5-AC8C2741A9B0/libplist.xcframework.zip", checksum: "c7a3db17b6f182800268503ace12366a1e1f5853267c141fd263c56ef71231e4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.93F4DFCE-5F12-4751-8BC5-AC8C2741A9B0/libtatsu.xcframework.zip", checksum: "582e8b50abf89d119b781ef22115ac30d518b3deb1c3ec304b9e73d13c0b9057"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.93F4DFCE-5F12-4751-8BC5-AC8C2741A9B0/libusbmuxd.xcframework.zip", checksum: "e9a208805c679823300574438ff2ef16520b680a30ca9a3b2a4bd5d66e5a5a9d"),
    ]
)

