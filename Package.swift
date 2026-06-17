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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B342A755-6E8E-49CC-A72D-196E5BC154F6/libimobiledevice.xcframework.zip", checksum: "87c4d01a366f31796f65073b2bda6c3335120018333f6621e7ab6bc123aa934b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B342A755-6E8E-49CC-A72D-196E5BC154F6/libimobiledevice_glue.xcframework.zip", checksum: "e10998325177a6cbe64cd573eed29b8c21a815dc957fb0e09d3bf26bbc439f5a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B342A755-6E8E-49CC-A72D-196E5BC154F6/libplist.xcframework.zip", checksum: "f3ba19d2ccaa90896f2b29bd2b7c6cb77566cf93268fc3afd039870bd9f1f0b8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B342A755-6E8E-49CC-A72D-196E5BC154F6/libtatsu.xcframework.zip", checksum: "424dd88baf529e7e19417c5da4cc87d0c05b3f95ff4346e673b3178dbe38d3ef"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B342A755-6E8E-49CC-A72D-196E5BC154F6/libusbmuxd.xcframework.zip", checksum: "cbe5cc6458e883a50b2c0666d4983bef273d289e6acd787e4da61ebe2213241c"),
    ]
)

