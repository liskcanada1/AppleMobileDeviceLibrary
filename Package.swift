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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3577A1BD-2E4B-4F1C-94BC-B3C199D429DF/libimobiledevice.xcframework.zip", checksum: "b2a3a1ee2fc094a6749d50b1672ad3c6804ad0b3d5d4c354933f5a3261a82990"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3577A1BD-2E4B-4F1C-94BC-B3C199D429DF/libimobiledevice_glue.xcframework.zip", checksum: "39ee0fd6ce5b235d139b4a86dfa25f3d5385a04f039923abf56c03057af6e56d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3577A1BD-2E4B-4F1C-94BC-B3C199D429DF/libplist.xcframework.zip", checksum: "379ccd29c47b5a884c731b0927af2a8cd2981afef6bc3234bc76dc4cf23d0d42"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3577A1BD-2E4B-4F1C-94BC-B3C199D429DF/libtatsu.xcframework.zip", checksum: "98fd4228fd9e2babcccf63719e7b88731c58c7126eac272d39951be7d93e4672"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3577A1BD-2E4B-4F1C-94BC-B3C199D429DF/libusbmuxd.xcframework.zip", checksum: "1b031c0ed554d67fc61b11fa67971b51085185cd0bb4d0a5617b667174eb3470"),
    ]
)

