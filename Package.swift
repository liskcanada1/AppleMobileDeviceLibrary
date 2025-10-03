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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8BF4C3FF-E10E-4050-B921-1CCA922112FE/libimobiledevice.xcframework.zip", checksum: "39bbad19a8573ae6b55f624ca87ba265ba4ffab0f21418a97dcf2e1c052d278a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8BF4C3FF-E10E-4050-B921-1CCA922112FE/libimobiledevice_glue.xcframework.zip", checksum: "82d51bfd1a264500a41e70bc2a60b0fb0bed274b05d3de22ef476b4c48264bed"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8BF4C3FF-E10E-4050-B921-1CCA922112FE/libplist.xcframework.zip", checksum: "4bf734bebeed400cf8b58a698c93bcb49b5f2002d5310956861e0e5bbb2d2f0a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8BF4C3FF-E10E-4050-B921-1CCA922112FE/libtatsu.xcframework.zip", checksum: "8bd341b7ae56587f78466684be9ff6d438d6a12f3008940c2ff899651940ba01"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8BF4C3FF-E10E-4050-B921-1CCA922112FE/libusbmuxd.xcframework.zip", checksum: "dbd7d4c5623ce0bf6b5e0af0712e14d6c8648e14180111706b19242dbe4994ad"),
    ]
)

