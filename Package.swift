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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4DF79669-D18E-49A5-9178-5C1005893C02/libimobiledevice.xcframework.zip", checksum: "ebd5676b38cba0ffd95264b1ac329d5f04514b2edda981af8c63ff3e0923039c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4DF79669-D18E-49A5-9178-5C1005893C02/libimobiledevice_glue.xcframework.zip", checksum: "0e4daac80c39cf86c927df655a5c0fce78cf030a8b935d319b5f57a1efb78342"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4DF79669-D18E-49A5-9178-5C1005893C02/libplist.xcframework.zip", checksum: "1eaf1bdb9009c09229067f19ae3bcc5b22cf2b4acca02a52a3a337737b21651d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4DF79669-D18E-49A5-9178-5C1005893C02/libtatsu.xcframework.zip", checksum: "0801577e06a770ba7622d2c2174b281503a86c6711a764d1314d9310bbedb9c7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4DF79669-D18E-49A5-9178-5C1005893C02/libusbmuxd.xcframework.zip", checksum: "9d8819378dd8ab792c265118361366f264e436a9c461973863c43db9c5f9b1c7"),
    ]
)

