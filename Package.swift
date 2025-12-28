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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.25DD59C6-3738-436B-963C-86A0CF76ECDA/libimobiledevice.xcframework.zip", checksum: "fe1cb7f30f088a87364ef15302b47d42bbcdd60819492d75d7fb82f3ba126858"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.25DD59C6-3738-436B-963C-86A0CF76ECDA/libimobiledevice_glue.xcframework.zip", checksum: "cb4653920c15ce0a69682c7285f99f46361a87f1229b55036bea73aee6ba326f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.25DD59C6-3738-436B-963C-86A0CF76ECDA/libplist.xcframework.zip", checksum: "6041c228906977b3841355838e2f7e8974ed7b760441f6c36284ae0015a67bd7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.25DD59C6-3738-436B-963C-86A0CF76ECDA/libtatsu.xcframework.zip", checksum: "bbdb9870229f111cff71e15d135dfab9a3c215589f9bd685cc0a85a5c4d43660"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.25DD59C6-3738-436B-963C-86A0CF76ECDA/libusbmuxd.xcframework.zip", checksum: "c85f4918d72b521bb201febe30c7e5986096c9bc2f7ec50663ebd54e01803811"),
    ]
)

