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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B0C5C225-30B3-4007-9493-724830CB5B96/libimobiledevice.xcframework.zip", checksum: "882961af69dfd7a989ca9b2b76d152deba1040c54a4e204b4244a06becf23193"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B0C5C225-30B3-4007-9493-724830CB5B96/libimobiledevice_glue.xcframework.zip", checksum: "0710125652272e465c93aa54a5fe59591333d2de188e1875df8611b05b3e76fa"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B0C5C225-30B3-4007-9493-724830CB5B96/libplist.xcframework.zip", checksum: "15c6be4cb52514967b170f6ab0ee0ffb9185c76692a8830b91b54e72ab382dce"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B0C5C225-30B3-4007-9493-724830CB5B96/libtatsu.xcframework.zip", checksum: "86035a05fcbc1d70467da651ebe2e992d3b2b97f1547633bc17d4a40fb2aa961"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B0C5C225-30B3-4007-9493-724830CB5B96/libusbmuxd.xcframework.zip", checksum: "1e1929e9a13e500f93aad8c4aff318e62efb63b22d1560f66532f7825f211be9"),
    ]
)

