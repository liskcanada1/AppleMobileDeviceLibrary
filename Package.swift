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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.10353F65-A160-4D98-9431-FC5409F9C992/libimobiledevice.xcframework.zip", checksum: "1d3ca9fe41d31a9fa097c61e5e7bc29432be9da4f414857fd341ef726aa22b2b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.10353F65-A160-4D98-9431-FC5409F9C992/libimobiledevice_glue.xcframework.zip", checksum: "0125f2c63e81a88aa9c03e74123f67aecba7f94e51dc1ccb30ff0f561d6b926d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.10353F65-A160-4D98-9431-FC5409F9C992/libplist.xcframework.zip", checksum: "2a129ece5a3aeb44e31415aecdfd1bf0d7acf40191d9bb78c7502e04f7b3efea"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.10353F65-A160-4D98-9431-FC5409F9C992/libtatsu.xcframework.zip", checksum: "b5c1cd023f1737512349d5dda4f25c781ba7e61744ee0da2e4ee69129a3492dd"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.10353F65-A160-4D98-9431-FC5409F9C992/libusbmuxd.xcframework.zip", checksum: "458bbe62971a55788132fa9d5a98cb24d19c3b2f744e8c0a54b8784387c4aa7f"),
    ]
)

