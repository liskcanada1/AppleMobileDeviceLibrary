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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B82E10C4-3044-4A1D-BFA9-36827C6A40E5/libimobiledevice.xcframework.zip", checksum: "7e0aba0766454b0fd54aac1eab62a19413f03258dc82056d0a8920142d562198"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B82E10C4-3044-4A1D-BFA9-36827C6A40E5/libimobiledevice_glue.xcframework.zip", checksum: "7e4c4c7ea3f60d0da2dd7579c943a0f6c38dda5ef7b5aeb2f7f7a6ffbf797f52"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B82E10C4-3044-4A1D-BFA9-36827C6A40E5/libplist.xcframework.zip", checksum: "4b3596a849d332e7ae7917074bb32454d938e71ceb393e542357bdb72316ce5f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B82E10C4-3044-4A1D-BFA9-36827C6A40E5/libtatsu.xcframework.zip", checksum: "de180962a84f7009aa532723c89fc47104cb61d8ff7581d34293e8c6614dd620"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B82E10C4-3044-4A1D-BFA9-36827C6A40E5/libusbmuxd.xcframework.zip", checksum: "5b315dc6837289886a340e26b7aec54d6e3ab8ab67e0e7ee61fc148f5444f0c2"),
    ]
)

