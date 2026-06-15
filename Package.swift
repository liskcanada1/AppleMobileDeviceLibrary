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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F90F9957-3551-487E-817E-DA13726AB01A/libimobiledevice.xcframework.zip", checksum: "c93a3b53dfb07e86b03ec613a7cc562f99b67c964866704c188d63ff52f6c7fc"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F90F9957-3551-487E-817E-DA13726AB01A/libimobiledevice_glue.xcframework.zip", checksum: "6d46ecb94c07343acd436e5f0a005a5e4ce5f0fa15735625d3fc3ca841669b82"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F90F9957-3551-487E-817E-DA13726AB01A/libplist.xcframework.zip", checksum: "15bf207c7199dabf6cca50e3e3744c8caff2fbe26a826acfa3d02f7fa52898b6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F90F9957-3551-487E-817E-DA13726AB01A/libtatsu.xcframework.zip", checksum: "81ebc4833f68dd76f969756be780ea2fc8a0212034b9ec2891566fbdf3c2cd6b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F90F9957-3551-487E-817E-DA13726AB01A/libusbmuxd.xcframework.zip", checksum: "bc2136e74cec2b380d49de537813f85b1d7040d1bec59d5d78a0cd556a63b29e"),
    ]
)

