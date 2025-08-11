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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A859C428-C07D-4F4A-9558-E0275990C06E/libimobiledevice.xcframework.zip", checksum: "d2e9859811a4d3ce27add42bac7a152206aae4cc8f36d731256c3fe4ade5aff7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A859C428-C07D-4F4A-9558-E0275990C06E/libimobiledevice_glue.xcframework.zip", checksum: "74e7394817370c819298397d845ddf707690f5675a82c2901392c994aee571d8"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A859C428-C07D-4F4A-9558-E0275990C06E/libplist.xcframework.zip", checksum: "fb8407127fddc09febef7c6fbacf966f982f9a1f6db75418a3f86c4fe22233f0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A859C428-C07D-4F4A-9558-E0275990C06E/libtatsu.xcframework.zip", checksum: "a3d2c70fdac1df4b9a1b2da4e047d881fa0dfd9c1e4beb942bda5f12e0ff9748"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A859C428-C07D-4F4A-9558-E0275990C06E/libusbmuxd.xcframework.zip", checksum: "f53ae2f9f62f6903704d69ac8ed2c867c662b7d4c168720f716262ead54b18ee"),
    ]
)

