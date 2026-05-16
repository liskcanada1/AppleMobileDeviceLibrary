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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.64B7FC58-074E-4733-8248-F163C71061A0/libimobiledevice.xcframework.zip", checksum: "7400f6ae85b5c8b9f48554080176705908f34263f8ec947521667ab9b2144f9a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.64B7FC58-074E-4733-8248-F163C71061A0/libimobiledevice_glue.xcframework.zip", checksum: "3a997f1e66abb1f1ad7020e579fae3f7d7a6b502635a9e9ea6a1a96cd49bc9b7"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.64B7FC58-074E-4733-8248-F163C71061A0/libplist.xcframework.zip", checksum: "d1f33b1af57f5e8830ae9404c6a10c65dd21a270d85632256bca9e0c1e00ff71"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.64B7FC58-074E-4733-8248-F163C71061A0/libtatsu.xcframework.zip", checksum: "54dd7a36d500f69facbd78a83389751555cedecda074020ee569775da4e99573"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.64B7FC58-074E-4733-8248-F163C71061A0/libusbmuxd.xcframework.zip", checksum: "84e7cc40623850ab98723e0e4e7a86746a476b63bab1ca1bfd9af183f6ad1696"),
    ]
)

