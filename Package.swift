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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.31932892-8930-4C5F-947F-077DA58FB532/libimobiledevice.xcframework.zip", checksum: "bf78f78dc373a0c13d58d3c99e9bbd7ef37e8ac3a8057c66162ebb1634b51569"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.31932892-8930-4C5F-947F-077DA58FB532/libimobiledevice_glue.xcframework.zip", checksum: "939f8773998f60239ff7e4d9defd7cc5fd7f64f3baafffd2cf62bb619e011a43"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.31932892-8930-4C5F-947F-077DA58FB532/libplist.xcframework.zip", checksum: "303e15a9b76d958b27f7e881c1e6ced18c78c8fcf0c685d082deb7a52adace56"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.31932892-8930-4C5F-947F-077DA58FB532/libtatsu.xcframework.zip", checksum: "16fba5dbfd40515c2529ffad9f87953dca5123976690b990698f370bc57d2703"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.31932892-8930-4C5F-947F-077DA58FB532/libusbmuxd.xcframework.zip", checksum: "f551ec55181dc39846c78953a853dd4916ca91999bd92f28cc323664e468fdd6"),
    ]
)

