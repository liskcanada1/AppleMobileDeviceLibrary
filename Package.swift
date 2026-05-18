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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EBED9F17-BDC9-43B0-A54B-C993E3E95C0B/libimobiledevice.xcframework.zip", checksum: "4e15be51ab6e5c29cfe7d64026b0dc43ab75f3b13b57aada5e5eb64bf90da848"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EBED9F17-BDC9-43B0-A54B-C993E3E95C0B/libimobiledevice_glue.xcframework.zip", checksum: "243b32d1857fc2df80441d2c79b40bff7e08da053e24046d2d740b28966c12e4"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EBED9F17-BDC9-43B0-A54B-C993E3E95C0B/libplist.xcframework.zip", checksum: "6228f480c447856d5f5e6a646793cc279b6f44c96fc57408a8732067791dde0f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EBED9F17-BDC9-43B0-A54B-C993E3E95C0B/libtatsu.xcframework.zip", checksum: "0fc55b3727faf5dfc1cf3d76be4d5f60c45944cb77607b196afc8c13df3eba11"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EBED9F17-BDC9-43B0-A54B-C993E3E95C0B/libusbmuxd.xcframework.zip", checksum: "1c395c699b1cd88b35a3603859245230f587e296622ab348e0d48de973af8290"),
    ]
)

