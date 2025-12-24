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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.54AAECB1-2A3E-4FD2-BB68-40FEAF2BD9DA/libimobiledevice.xcframework.zip", checksum: "1bc088f847da9ec3f90069b13376686906cf55b0d7a1c257b379fd35f54f9f6b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.54AAECB1-2A3E-4FD2-BB68-40FEAF2BD9DA/libimobiledevice_glue.xcframework.zip", checksum: "8fa1443f4bcff83e3f8a68c6fe58612eb3d6a3ef0b9a47e4fcaee9e7821c8cc2"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.54AAECB1-2A3E-4FD2-BB68-40FEAF2BD9DA/libplist.xcframework.zip", checksum: "7e431923859f73d74c10ed9b21d76f5e8406afa3913546818dd1b64778675619"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.54AAECB1-2A3E-4FD2-BB68-40FEAF2BD9DA/libtatsu.xcframework.zip", checksum: "1479e6b8c937d02620a4d2d8a889a721b8cd3c16ad9b029e0ce4fad1e07c8124"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.54AAECB1-2A3E-4FD2-BB68-40FEAF2BD9DA/libusbmuxd.xcframework.zip", checksum: "4ba819d9cbcbcf86e3a8d863f0a418bad5d50417b5f001517d77eed4d8f7ffba"),
    ]
)

