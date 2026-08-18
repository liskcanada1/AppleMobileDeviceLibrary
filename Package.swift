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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.21F33C1A-5B78-42B3-806B-1FF29D7F5E4F/libimobiledevice.xcframework.zip", checksum: "0ff831c3fa369c49cf1ec16c6fee0ab46d3adf1c54b3dacebcd1622d4806a2c4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.21F33C1A-5B78-42B3-806B-1FF29D7F5E4F/libimobiledevice_glue.xcframework.zip", checksum: "862fe0c2037caa9c2d6910644d08ca1efeaa988fd6c211fb784577003213c5f6"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.21F33C1A-5B78-42B3-806B-1FF29D7F5E4F/libplist.xcframework.zip", checksum: "b02ada5e5dbf2cb59ca63384ab567774cc6b36f76b743ab42a856fbbf0aa7377"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.21F33C1A-5B78-42B3-806B-1FF29D7F5E4F/libtatsu.xcframework.zip", checksum: "7de8198048a2689bf6c2a17e12fb5b7377e2860ec1f2a40ea76e385635224954"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.21F33C1A-5B78-42B3-806B-1FF29D7F5E4F/libusbmuxd.xcframework.zip", checksum: "6164c97437135cd1e6252b79f03578c4952e74044f02b0a2d3de550befbe3292"),
    ]
)

