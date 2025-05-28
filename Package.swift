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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3AEF0391-09F5-4F05-9290-D80B97BEA90C/libimobiledevice.xcframework.zip", checksum: "a3c8510921b4923b32105de272f6f8c162f3f1f75e19a5e4f6d5b607d58b497c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3AEF0391-09F5-4F05-9290-D80B97BEA90C/libimobiledevice_glue.xcframework.zip", checksum: "4c80e5a685bd22299540202b7ba31d5e649faf8e3e7625ef1209e6ad65fe26cb"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3AEF0391-09F5-4F05-9290-D80B97BEA90C/libplist.xcframework.zip", checksum: "2a7543d6c1015187cbf3218d41e1ab515d38abc382ef0b842c38d3322ce991ba"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3AEF0391-09F5-4F05-9290-D80B97BEA90C/libtatsu.xcframework.zip", checksum: "e2be005acc74bec3ec51ca0629d2061796e3a16137a77fce90edd72b22edfa05"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3AEF0391-09F5-4F05-9290-D80B97BEA90C/libusbmuxd.xcframework.zip", checksum: "c405339641a2c7d99f9f7e88986772c56fc0ad0610a40646d4746fd88cee3690"),
    ]
)

