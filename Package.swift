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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4F8C84EA-1A48-409C-BD5B-F2A694AA6F25/libimobiledevice.xcframework.zip", checksum: "e865cf6f19f6057a1de21ceca282af75ad79fa5b7448268972eb982bc6e34709"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4F8C84EA-1A48-409C-BD5B-F2A694AA6F25/libimobiledevice_glue.xcframework.zip", checksum: "8b0427c7dd5c5e0354fb2a3b872c67356e491daef78169bb560c523b36bb6725"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4F8C84EA-1A48-409C-BD5B-F2A694AA6F25/libplist.xcframework.zip", checksum: "c4d6febdadedce0a89505e89369cb62debb08c455292a99af69eaf64b335e675"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4F8C84EA-1A48-409C-BD5B-F2A694AA6F25/libtatsu.xcframework.zip", checksum: "2fdf8acdee8d5c4f5add112c86b515503ae973dee85e20ac9e9b4c9eda486a9f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4F8C84EA-1A48-409C-BD5B-F2A694AA6F25/libusbmuxd.xcframework.zip", checksum: "784a1e40472fbd9a2188b63f5c9a659ea0db4ec6aa80a819bdb526e166d6b603"),
    ]
)

