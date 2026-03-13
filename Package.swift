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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E75D616-76A9-472B-97A4-5A5BA23B0091/libimobiledevice.xcframework.zip", checksum: "30d80fe023a15aaec401b369f28a9e0664c8e82102e730e1c82d55809ff37568"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E75D616-76A9-472B-97A4-5A5BA23B0091/libimobiledevice_glue.xcframework.zip", checksum: "918906c7bf31bbf6b8cdc7739e86091b2da9653cb3a61716b8b62b29fc0c1ba7"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E75D616-76A9-472B-97A4-5A5BA23B0091/libplist.xcframework.zip", checksum: "882cacf608cd4615cc176012283f27eff757c4547f50c467f49a3cb8ea7aa788"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E75D616-76A9-472B-97A4-5A5BA23B0091/libtatsu.xcframework.zip", checksum: "641dfdbae5049f3ca0ff551bece80e9719bcc7996454349fd78d5829ab4fa865"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5E75D616-76A9-472B-97A4-5A5BA23B0091/libusbmuxd.xcframework.zip", checksum: "f0b2ceea3aa451e5b4309eed2cb231bdb36cccf0abffe4db66db705896a8ec33"),
    ]
)

