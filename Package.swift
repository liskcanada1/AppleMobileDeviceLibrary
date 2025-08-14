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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4230F493-543D-49A5-9EA7-09A2836FF37C/libimobiledevice.xcframework.zip", checksum: "934ff19c2c2a338d83a47893d8d7ac839beb045fdba5918c65ec75c2c392f5a1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4230F493-543D-49A5-9EA7-09A2836FF37C/libimobiledevice_glue.xcframework.zip", checksum: "48f441fd3c74b6269ae81cea2cb537721672d478d5c98e902d49b181c12577d6"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4230F493-543D-49A5-9EA7-09A2836FF37C/libplist.xcframework.zip", checksum: "28233e1daad33cba95f93e4b63ce00a05021eb55a5249cfcf60c91fb11d011d2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4230F493-543D-49A5-9EA7-09A2836FF37C/libtatsu.xcframework.zip", checksum: "6066ee19bd9b821462fee2b117b80cf4f60898b21552ddf2731575fe62b58b2a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4230F493-543D-49A5-9EA7-09A2836FF37C/libusbmuxd.xcframework.zip", checksum: "a21b8b7a6cf5d46378afff205fdf60a373c7e4b0112febbe27b49beb389f4e8b"),
    ]
)

