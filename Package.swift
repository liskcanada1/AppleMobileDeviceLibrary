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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7B1EE2F1-2AE4-42A9-A72B-1DE4FF89B03A/libimobiledevice.xcframework.zip", checksum: "baa11d585f80fc1dde81b19aa95d4e6a1ac0de1fd6ee9d2654a03616ee8a6e67"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7B1EE2F1-2AE4-42A9-A72B-1DE4FF89B03A/libimobiledevice_glue.xcframework.zip", checksum: "378cf2a0d8f8052ea37755477e67b20080a35de107990b4f1ca5acd462742185"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7B1EE2F1-2AE4-42A9-A72B-1DE4FF89B03A/libplist.xcframework.zip", checksum: "6e95290f85fa1fa4d2e554a07361b4e8ee06e54d53bf8579327f3ebfd12bb218"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7B1EE2F1-2AE4-42A9-A72B-1DE4FF89B03A/libtatsu.xcframework.zip", checksum: "e7f7838eb4f39d637de40036264cff989bf7155d4cfec4f7d52691b2dd8c6a7c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7B1EE2F1-2AE4-42A9-A72B-1DE4FF89B03A/libusbmuxd.xcframework.zip", checksum: "c4bfe21459225bb62795cdd48d86748934ce81fa08908ff4fe34515bd023fe05"),
    ]
)

