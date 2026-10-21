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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2BC6C43E-D669-4208-8218-15205B4DA253/libimobiledevice.xcframework.zip", checksum: "275ee1fbfb953394582719035c4edf5737407e9e50a0cadc4a28db885eb27d15"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2BC6C43E-D669-4208-8218-15205B4DA253/libimobiledevice_glue.xcframework.zip", checksum: "34c29be68dcb11e80d69720d08e8c86ae2b387e28b330e65aba4dd1f47d1773d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2BC6C43E-D669-4208-8218-15205B4DA253/libplist.xcframework.zip", checksum: "d03fb1d2bc4d370c4263d73b94d2449c2226537c100ec868d5bea8c036ae18a4"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2BC6C43E-D669-4208-8218-15205B4DA253/libtatsu.xcframework.zip", checksum: "b034d03d8dc3142bb5bf9b5dc6b91936b705f79e04425941d2de053e791f66b6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2BC6C43E-D669-4208-8218-15205B4DA253/libusbmuxd.xcframework.zip", checksum: "be193a8f5e9937924d4aa77c7399cf375fb462ee43b3aa48395cf738f4a259c4"),
    ]
)

