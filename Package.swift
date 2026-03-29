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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DA71F001-AF18-485E-9FF0-FA095A6B325F/libimobiledevice.xcframework.zip", checksum: "6cabcbd53270a910007833e59eb4b47f690103b615146059c1db27e186e5fd9b"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DA71F001-AF18-485E-9FF0-FA095A6B325F/libimobiledevice_glue.xcframework.zip", checksum: "f790249d2f6dffa7beb3e61d459d8e52447887a0dfcfab69739590a0b06b5f77"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DA71F001-AF18-485E-9FF0-FA095A6B325F/libplist.xcframework.zip", checksum: "edfceed52222011d76b215640333d08fd25f2624b87c2c9387da28a44db31543"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DA71F001-AF18-485E-9FF0-FA095A6B325F/libtatsu.xcframework.zip", checksum: "8662cd18d421f302792b699aca5b7dfb7121332a91b8a43184f0d36eedbf5c4e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.DA71F001-AF18-485E-9FF0-FA095A6B325F/libusbmuxd.xcframework.zip", checksum: "bcc626f6e4706ccfda98c1a7d82910f9f78a5c0ae4b9936319d7a0c6653348ab"),
    ]
)

