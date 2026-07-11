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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC2557D5-086A-47AB-ACFC-A8B11C604E0F/libimobiledevice.xcframework.zip", checksum: "2d1c928d44531f8b471b0de0994eba3376d7943e3f8ba8b1b37c36ca7b217bf0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC2557D5-086A-47AB-ACFC-A8B11C604E0F/libimobiledevice_glue.xcframework.zip", checksum: "07fa3ef87d2fad0546501f823b2e77b1f4ec99a8683685d1a579634b9f03bf07"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC2557D5-086A-47AB-ACFC-A8B11C604E0F/libplist.xcframework.zip", checksum: "43b08c5839f1d9cbe02ca674b8b1b5e3120a7f4da2e206ecea0a359619e1b925"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC2557D5-086A-47AB-ACFC-A8B11C604E0F/libtatsu.xcframework.zip", checksum: "4616776e4bd9de4f418df9b2ec399f16d3c2fcf45f4033cc5595751fb8f07402"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CC2557D5-086A-47AB-ACFC-A8B11C604E0F/libusbmuxd.xcframework.zip", checksum: "b65413325234c2e86cde3bf807a39731277a114fb6ab466b0ef09967586e34cd"),
    ]
)

