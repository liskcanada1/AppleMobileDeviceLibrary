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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BA12B246-4F18-4527-92A9-4E712CF3380B/libimobiledevice.xcframework.zip", checksum: "af7aed92facdedef7bb120c88c85230337094ab1c8b912abfe6ea39d18710720"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BA12B246-4F18-4527-92A9-4E712CF3380B/libimobiledevice_glue.xcframework.zip", checksum: "31fe5ee505321ceeaa12cb283f1d46ae14400e1f2e82d7fae4475280d6963f03"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BA12B246-4F18-4527-92A9-4E712CF3380B/libplist.xcframework.zip", checksum: "6015e72862600b33b5020cb716757d526280d39f44098118d4b011effc32f981"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BA12B246-4F18-4527-92A9-4E712CF3380B/libtatsu.xcframework.zip", checksum: "b27f1dca521ae13a4c9ffc7b89bb7d7e40782b192558641e0478114000149758"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BA12B246-4F18-4527-92A9-4E712CF3380B/libusbmuxd.xcframework.zip", checksum: "03ed7e803e33d6c50e457fe8e654497fd4d29bf28bacc17cd8b870e5c1aae15a"),
    ]
)

