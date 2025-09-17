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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5BC4464A-C391-4DEE-8555-3F9ED4D94CF1/libimobiledevice.xcframework.zip", checksum: "85ebd91ed98e4d70b032e255a4cc52269b23347fb07fc2be9c0525bd518b4b42"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5BC4464A-C391-4DEE-8555-3F9ED4D94CF1/libimobiledevice_glue.xcframework.zip", checksum: "14999b533d899a4d1421d1245a8d8d57204f828049e5a8b691b02c0dbcfd3256"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5BC4464A-C391-4DEE-8555-3F9ED4D94CF1/libplist.xcframework.zip", checksum: "315e9408c3b8faddc14696ff7029f299d8c07138b856c66d4cf9bcec96ef868d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5BC4464A-C391-4DEE-8555-3F9ED4D94CF1/libtatsu.xcframework.zip", checksum: "30911a6052f741c19764ace2742d521facd61d463f32ad5442143ed7fcd322d9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5BC4464A-C391-4DEE-8555-3F9ED4D94CF1/libusbmuxd.xcframework.zip", checksum: "4b7fe0626ca015a0ece523f3d67a48c03e418fb02347603d5c0008c8f0733c4a"),
    ]
)

