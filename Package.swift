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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7C939E13-A81A-4FA3-8C11-7872905A1441/libimobiledevice.xcframework.zip", checksum: "3cb8087f43a273325e8f7c2cbc38c2d32e43b643f11a24e98725f879b33ebc11"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7C939E13-A81A-4FA3-8C11-7872905A1441/libimobiledevice_glue.xcframework.zip", checksum: "01fe26d19b3f9af403208baa7a4078572aa7aca98d08e75d46a7c5c209be5f94"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7C939E13-A81A-4FA3-8C11-7872905A1441/libplist.xcframework.zip", checksum: "ed1d3e5e8c5cd9ec61cd4f09ac530b63fe878211a89876fc09d7e39a66c02abd"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7C939E13-A81A-4FA3-8C11-7872905A1441/libtatsu.xcframework.zip", checksum: "f754d3161bb1697c77c8ee7127421d3a7a997a3cfb5c9bacad5713d0c9fcdc1f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7C939E13-A81A-4FA3-8C11-7872905A1441/libusbmuxd.xcframework.zip", checksum: "2d8e448b03f5c3a53531170ee9318387de32419a2923edf6b7096362eec1eff6"),
    ]
)

