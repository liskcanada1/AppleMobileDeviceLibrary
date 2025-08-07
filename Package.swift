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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B502E837-C211-4D97-9ABC-825E5B05F7C8/libimobiledevice.xcframework.zip", checksum: "9d04de44054d08dee141d49dd54f4c013ee3923f1c8c75666c87764225a28a2c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B502E837-C211-4D97-9ABC-825E5B05F7C8/libimobiledevice_glue.xcframework.zip", checksum: "3ad6a1dae4f0ac7ab2796448841e55fafc09a4f2d968483df011c7ed9310c54b"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B502E837-C211-4D97-9ABC-825E5B05F7C8/libplist.xcframework.zip", checksum: "7ecca3c6f23f2f080de586df55d4b5faa80d755939d0a6dbc6bafb7c36b7f81c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B502E837-C211-4D97-9ABC-825E5B05F7C8/libtatsu.xcframework.zip", checksum: "a6212b5725d99f1f5722716d175f60d01705ea01fa0788bff6bbb14fb9763b09"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B502E837-C211-4D97-9ABC-825E5B05F7C8/libusbmuxd.xcframework.zip", checksum: "16bd7a5ba0cdf8a6f72b9c89d2237f1843e5db020e484cd09c72fc59fb21f76a"),
    ]
)

