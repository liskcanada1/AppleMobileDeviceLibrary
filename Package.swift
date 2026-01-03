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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A48EC31B-6B15-4681-B01B-A02B8A5C156F/libimobiledevice.xcframework.zip", checksum: "3fe641e1fea02201e1773f579339e279e754b8d230febb590904964237325904"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A48EC31B-6B15-4681-B01B-A02B8A5C156F/libimobiledevice_glue.xcframework.zip", checksum: "6030c0f058b3498fa0ccdde126e0cc51bd5ea59f55e3fe7df9a55e77e05f0723"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A48EC31B-6B15-4681-B01B-A02B8A5C156F/libplist.xcframework.zip", checksum: "d1d3b75be4cbb9f5cc16bb888aa5edee1134e8dd422ef743e1154b51f0af6ef2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A48EC31B-6B15-4681-B01B-A02B8A5C156F/libtatsu.xcframework.zip", checksum: "1a6c5326595af47bae4bf409d0e3d276904407ae59fd26ba6090328917743323"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.A48EC31B-6B15-4681-B01B-A02B8A5C156F/libusbmuxd.xcframework.zip", checksum: "55e75f8202858c99bbe20df024313d811c8ff3db3dcb4356b9ac3c26b9cf166d"),
    ]
)

