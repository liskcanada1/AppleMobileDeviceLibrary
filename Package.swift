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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4CB47F0F-A1E0-4505-9F88-39FB21ABDE9C/libimobiledevice.xcframework.zip", checksum: "7a5da6907b1997968b1bee9a0856b2d1d02a2da2049217af75c681b3f0f62174"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4CB47F0F-A1E0-4505-9F88-39FB21ABDE9C/libimobiledevice_glue.xcframework.zip", checksum: "29e54838ebc5a31a2b1e2005a3c41b294730c7288c8c006b53c8e45072441679"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4CB47F0F-A1E0-4505-9F88-39FB21ABDE9C/libplist.xcframework.zip", checksum: "99b2d1f176881ee95bccc45c2635620c25777413d2a2b6afe5232ccf25380385"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4CB47F0F-A1E0-4505-9F88-39FB21ABDE9C/libtatsu.xcframework.zip", checksum: "f4b83e5ddcb41c9eeaeb9b9e830bf5b8dd15f09fd7b3a5ee06c719062c334857"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4CB47F0F-A1E0-4505-9F88-39FB21ABDE9C/libusbmuxd.xcframework.zip", checksum: "dd0806659a548e34dfe7d2d01e04a047b4ac319dd27ffabcb6efe3c635355c3c"),
    ]
)

