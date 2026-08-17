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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C45E254B-70EE-44DD-84D9-7921C6480838/libimobiledevice.xcframework.zip", checksum: "f58b8cb234e56eb70b56913f3b163c5245173eee27ef278b88b18eaf72bf60b2"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C45E254B-70EE-44DD-84D9-7921C6480838/libimobiledevice_glue.xcframework.zip", checksum: "2577aefe83a6b7f469eccca7c81368223b0c6df53b089887cbce16a9605e5c4e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C45E254B-70EE-44DD-84D9-7921C6480838/libplist.xcframework.zip", checksum: "bb65893860db966d2786b24ceb23e73ad38a0b3ab78d1108d6068b869177f76e"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C45E254B-70EE-44DD-84D9-7921C6480838/libtatsu.xcframework.zip", checksum: "6f03586c4d2752f417d808020d953b2f122c03ef91e05bf8d781eb111ba39d38"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C45E254B-70EE-44DD-84D9-7921C6480838/libusbmuxd.xcframework.zip", checksum: "2842444a41d9ebb80f100092a65c63252d85988575ecef60933db99ca09bc09f"),
    ]
)

