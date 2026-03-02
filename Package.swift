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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5551ACB8-41A5-4E9A-866A-51385CC734FB/libimobiledevice.xcframework.zip", checksum: "8eda45c07ab67b801f5b83551522c0d36934db0ee28dc8407b05ce06ae9abb7f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5551ACB8-41A5-4E9A-866A-51385CC734FB/libimobiledevice_glue.xcframework.zip", checksum: "0ab9014989a9e403962b7e59e9a614180ab990476f4ea12f4a0a876aff31245a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5551ACB8-41A5-4E9A-866A-51385CC734FB/libplist.xcframework.zip", checksum: "6aca61286452a7c88b05744bea59ecf688cf39c19df9e5840090ded25ee3cce8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5551ACB8-41A5-4E9A-866A-51385CC734FB/libtatsu.xcframework.zip", checksum: "6ffabf19ebac0d398c23de629127d7decbeccf0dcf28da8b0d70c0b73993c114"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5551ACB8-41A5-4E9A-866A-51385CC734FB/libusbmuxd.xcframework.zip", checksum: "9affa2591bf3192945ce4531d2117b5243e2744293bf228ef93f1a0965191046"),
    ]
)

