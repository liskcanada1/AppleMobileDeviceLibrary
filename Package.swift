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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4299D88E-06D0-420E-8346-013C044851EF/libimobiledevice.xcframework.zip", checksum: "87a1cd43f75831525b0ae38b26b01f4230c61e092bd9329a6344702a06b6fb1b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4299D88E-06D0-420E-8346-013C044851EF/libimobiledevice_glue.xcframework.zip", checksum: "ae1d45f651998606bc787e694b32bf5ef8af668341ccd95f5ae238d1cda8d200"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4299D88E-06D0-420E-8346-013C044851EF/libplist.xcframework.zip", checksum: "475c9da7f78d95d0aa3b7a7b5014251c7f0de0f2ae09ea886d0fc4377f576c61"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4299D88E-06D0-420E-8346-013C044851EF/libtatsu.xcframework.zip", checksum: "7a36000e44ec885ae69a7b958a295a0335fedb8ec66822fed9d5ffa23c50cd88"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4299D88E-06D0-420E-8346-013C044851EF/libusbmuxd.xcframework.zip", checksum: "c1fece2725952e9294b29346cf5baf221ce606bd376e6b154f5344de9baa5a36"),
    ]
)

