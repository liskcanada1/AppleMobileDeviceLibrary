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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7374BCB6-89CB-404F-A27E-E4D349A453A4/libimobiledevice.xcframework.zip", checksum: "bbf399350c23bec3efa023a931af2a9f261b2a6d9e1bf956305aa2ceec94c3a6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7374BCB6-89CB-404F-A27E-E4D349A453A4/libimobiledevice_glue.xcframework.zip", checksum: "f5aad2497782dbfefe10de45ac59d3d3fc298d59563a7e2425c8bd3d5c40d160"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7374BCB6-89CB-404F-A27E-E4D349A453A4/libplist.xcframework.zip", checksum: "8c7a25157865c10ce2589c77ec2bcb3fd43ca3522d4065444e9892416ae23bc1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7374BCB6-89CB-404F-A27E-E4D349A453A4/libtatsu.xcframework.zip", checksum: "9a58b37ceb831efae9394dadc44418cd6f381aa8d9c66abc1f699ef625a62b2e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7374BCB6-89CB-404F-A27E-E4D349A453A4/libusbmuxd.xcframework.zip", checksum: "b7522463b6cea26c2a567aa161bbc8f249c807503009880bff4f4cc8b9e227ed"),
    ]
)

