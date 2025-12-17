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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC478AFA-C418-4D1D-9D87-3FE00CA73380/libimobiledevice.xcframework.zip", checksum: "088bd443bea6cf33f3db23a182ecbedf9e8c80a16a0056c8c4f6fc0511757dd7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC478AFA-C418-4D1D-9D87-3FE00CA73380/libimobiledevice_glue.xcframework.zip", checksum: "48c6471fe9f81efd94e95936d9483c683150df07e30f14ec441e231d892af0bd"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC478AFA-C418-4D1D-9D87-3FE00CA73380/libplist.xcframework.zip", checksum: "6b561b77f5c466b404a3b68ecb64162b1c9d23b34505a84b1cd12d44438ca4bc"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC478AFA-C418-4D1D-9D87-3FE00CA73380/libtatsu.xcframework.zip", checksum: "aee0a8d244b9a0316d92097dec93e612de4f2c07fc12e10ad9ff46a34b361991"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC478AFA-C418-4D1D-9D87-3FE00CA73380/libusbmuxd.xcframework.zip", checksum: "1e34eed1ac8cb808a40e496de584e9e5f353c59e8fd596f6d6d57ff447b6e7b5"),
    ]
)

