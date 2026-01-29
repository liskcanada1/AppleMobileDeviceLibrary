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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5601BB54-FA28-4031-9FC5-1B0A1ED6E9AB/libimobiledevice.xcframework.zip", checksum: "17966e73eab47c0557ea41a65b775529900dceb0fc1fc190e1b29fb6f4d37fa7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5601BB54-FA28-4031-9FC5-1B0A1ED6E9AB/libimobiledevice_glue.xcframework.zip", checksum: "611cd86c41ff0a368bf69c71f1fea02b73be2d64c09cdb05d7149c8e658a690a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5601BB54-FA28-4031-9FC5-1B0A1ED6E9AB/libplist.xcframework.zip", checksum: "e7355fbfd3c3c6fb65e605341f632674a435c1437cb436c7b13728a4d545bd9f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5601BB54-FA28-4031-9FC5-1B0A1ED6E9AB/libtatsu.xcframework.zip", checksum: "1e2bf53581c345336bc1574e604a705850eb6ac3898ed7223a486eee1fbb8d30"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5601BB54-FA28-4031-9FC5-1B0A1ED6E9AB/libusbmuxd.xcframework.zip", checksum: "d62233b0c683d5205b310d34c8834ebe2cee96f1aa696e49ffcd04acc7cbac7d"),
    ]
)

