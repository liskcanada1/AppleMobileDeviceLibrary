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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AAD39C38-3B6F-477A-B6FA-A396FE234C4D/libimobiledevice.xcframework.zip", checksum: "281de1ab18ce7a4a9feb2f8d9a85177726d5b84cc322c02ada85c02f08e7e779"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AAD39C38-3B6F-477A-B6FA-A396FE234C4D/libimobiledevice_glue.xcframework.zip", checksum: "6599b6d231a725e63315f5571a9d9d2972b9194e0d5eb1a3b8efb911bc2f7cd5"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AAD39C38-3B6F-477A-B6FA-A396FE234C4D/libplist.xcframework.zip", checksum: "9ab3d7b46326cfe853dc31536ea311a6dde33c1881d6cec0a18fbbd3fa908a9c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AAD39C38-3B6F-477A-B6FA-A396FE234C4D/libtatsu.xcframework.zip", checksum: "1ee962c480e53248cbc9fd65018697e52332cd0f79a42613a90986e9f81e108a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.AAD39C38-3B6F-477A-B6FA-A396FE234C4D/libusbmuxd.xcframework.zip", checksum: "72a073af1ee159c4d8634711c1ad50a5afc1be3cdbde50983b9824ee309c0589"),
    ]
)

