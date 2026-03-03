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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7C94BDC4-503D-4CB6-B157-EB7703921595/libimobiledevice.xcframework.zip", checksum: "1eadbf00c826dde0e2874c92f2919d06c102a154c130c972d0ef9b4db9e8bf31"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7C94BDC4-503D-4CB6-B157-EB7703921595/libimobiledevice_glue.xcframework.zip", checksum: "c8084320e42d122585c269be0a3d3d3cc55bdb6de292a1874f242555df9faed7"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7C94BDC4-503D-4CB6-B157-EB7703921595/libplist.xcframework.zip", checksum: "ae79a0b9a8bf49623a0c25c6cb7163e33e6dbe66cbc51d899b0a187bc32188f2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7C94BDC4-503D-4CB6-B157-EB7703921595/libtatsu.xcframework.zip", checksum: "4d99f2cb8a5eb774f31e92e914cb7d4ed04fb321e8fea7055074234bf5fd8a40"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7C94BDC4-503D-4CB6-B157-EB7703921595/libusbmuxd.xcframework.zip", checksum: "79e8b660a3a316f221c337f04f178370658063b2f2333cf5f95b70c36bf7e714"),
    ]
)

