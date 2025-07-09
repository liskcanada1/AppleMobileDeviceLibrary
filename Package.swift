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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0BE47957-3310-48AE-B03C-6E6705F70C1C/libimobiledevice.xcframework.zip", checksum: "5fd4fe7ea8f1fc2de37ac131dd8142ab1ad584887f0b9ae1ef8a161c0dfafab6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0BE47957-3310-48AE-B03C-6E6705F70C1C/libimobiledevice_glue.xcframework.zip", checksum: "328d62f0dcb5d7e671e20302bdb3fe65bcc12bf5d1acaa577a683b872bb2a9a7"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0BE47957-3310-48AE-B03C-6E6705F70C1C/libplist.xcframework.zip", checksum: "fa09026a45de3d7dc0c774de855141746c24225d402daf23e3577a7f7e26f591"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0BE47957-3310-48AE-B03C-6E6705F70C1C/libtatsu.xcframework.zip", checksum: "7531b268b5ea2d46084e6d3c2d4ebfd271988a1b018e713a21a1bfd3a30d0fcc"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0BE47957-3310-48AE-B03C-6E6705F70C1C/libusbmuxd.xcframework.zip", checksum: "63cdf04b93189027e54734b870a21f1ba591ca2e3cf97def42bc1e1b5445a820"),
    ]
)

