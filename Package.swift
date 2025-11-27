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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A8E2A864-E68A-443B-BFB9-4EDE6C19DBDD/libimobiledevice.xcframework.zip", checksum: "f9200b90cd917151906bf2077a8c2aa011cc97d9f53a912d75f5bea5aa918292"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A8E2A864-E68A-443B-BFB9-4EDE6C19DBDD/libimobiledevice_glue.xcframework.zip", checksum: "2aba318f4fd13a66694f9fc82bd622c04867e8e26d332b9d4755a4921be2d3a9"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A8E2A864-E68A-443B-BFB9-4EDE6C19DBDD/libplist.xcframework.zip", checksum: "91edc72e5b9d453f543f987f9b132785e41bc251d64312818ebd1c4f5a202258"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A8E2A864-E68A-443B-BFB9-4EDE6C19DBDD/libtatsu.xcframework.zip", checksum: "4ba77ed6ac9e04570e9308943b87291338f7b25d53687860d5bdfbb5e03d6557"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A8E2A864-E68A-443B-BFB9-4EDE6C19DBDD/libusbmuxd.xcframework.zip", checksum: "3fe934f742884ce5908e277bc7622af325376f1833882c2a2782c389e61265fc"),
    ]
)

