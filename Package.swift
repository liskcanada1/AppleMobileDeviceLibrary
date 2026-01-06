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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1D825BC7-1296-4AE3-870E-32A0AB203917/libimobiledevice.xcframework.zip", checksum: "59cad227c77571172ebba87f20e839c34c57e7d7684b8c44e65e7cf404d23174"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1D825BC7-1296-4AE3-870E-32A0AB203917/libimobiledevice_glue.xcframework.zip", checksum: "7ceb12a85c71b79cf4af4c6980b1940e3a83cac7a3ada2437ae5852600298684"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1D825BC7-1296-4AE3-870E-32A0AB203917/libplist.xcframework.zip", checksum: "b0a4baa62420375a4c6f36486152ab100c3c4eb885860de364bdd580a90f5a07"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1D825BC7-1296-4AE3-870E-32A0AB203917/libtatsu.xcframework.zip", checksum: "54c0f62c6fcbb3e79171eab6657581598617f42ea9143641b643a00a75835fe7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1D825BC7-1296-4AE3-870E-32A0AB203917/libusbmuxd.xcframework.zip", checksum: "fd53926db6750c138b70d97ebf7cf196952409fd5410a9f92bdd0c9990fe2ba3"),
    ]
)

