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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FD4C7443-A35D-43DC-A76C-86607E954E76/libimobiledevice.xcframework.zip", checksum: "52a31fa7b881c55a0a887568c2cd8562b36c30328a758968c43819b144e06a61"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FD4C7443-A35D-43DC-A76C-86607E954E76/libimobiledevice_glue.xcframework.zip", checksum: "a956d85195bf851f6c44c855593932325765b9afe196bf3f5be2b30303388d29"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FD4C7443-A35D-43DC-A76C-86607E954E76/libplist.xcframework.zip", checksum: "bd995de021577924da1c4f5d38a102e90b7a782832a6748dd71490ae917fc8f3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FD4C7443-A35D-43DC-A76C-86607E954E76/libtatsu.xcframework.zip", checksum: "747c31c299882b1fcb7a76c80357c62d62a5ff2da793fd389327cf288219447e"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FD4C7443-A35D-43DC-A76C-86607E954E76/libusbmuxd.xcframework.zip", checksum: "05d2dd9f041c08757e5123295fecbf12c3cdce53e30a0b9e10b6059aa1cb1845"),
    ]
)

