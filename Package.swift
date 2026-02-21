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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B8D7EB55-CB3C-4C0B-8196-861F75BE6898/libimobiledevice.xcframework.zip", checksum: "62be9bdd2d2e75e5635703fb1a376a9d7234d57e592b7aa6339822d134c31145"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B8D7EB55-CB3C-4C0B-8196-861F75BE6898/libimobiledevice_glue.xcframework.zip", checksum: "619064e724c22a0956b9ecedf691ac665bafd5ea7a4738fbbc61a072029ef80f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B8D7EB55-CB3C-4C0B-8196-861F75BE6898/libplist.xcframework.zip", checksum: "27f665207e691d40ca37b1d4a877a1fa13159535d1eec1211bb31ccd11355b35"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B8D7EB55-CB3C-4C0B-8196-861F75BE6898/libtatsu.xcframework.zip", checksum: "d0d7a732e6f7de18894cf6bb8196766d15e70fb940ce1647b09673284e098815"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B8D7EB55-CB3C-4C0B-8196-861F75BE6898/libusbmuxd.xcframework.zip", checksum: "cdb7d96511fabaf85a089646f3f2b046da14cecf00575647d14161e9a26e4106"),
    ]
)

