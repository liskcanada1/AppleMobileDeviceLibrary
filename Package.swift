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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3E0A705-5696-466F-A923-CD5AA6AB1F43/libimobiledevice.xcframework.zip", checksum: "b8f7f0d7081225eeb770351ed3492ebc59fd83ad8bb249fbfabebff76cc344e5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3E0A705-5696-466F-A923-CD5AA6AB1F43/libimobiledevice_glue.xcframework.zip", checksum: "1ed16e078ab4354daa5caaee20ed5df463584d17b95777866628724769cd3178"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3E0A705-5696-466F-A923-CD5AA6AB1F43/libplist.xcframework.zip", checksum: "1642607a0a64dcfab258848178a758761a0ebab20b6c788c2b193638b9db6dc2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3E0A705-5696-466F-A923-CD5AA6AB1F43/libtatsu.xcframework.zip", checksum: "a07a66d86b7d47983a371a3590cdbc2f9ed6c2d297afe12e632a737dead385c3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3E0A705-5696-466F-A923-CD5AA6AB1F43/libusbmuxd.xcframework.zip", checksum: "a1ae24091b7ddd3d1e2fdfcd1b3ae8c1e73b47803a1b2e0fe0425198e5cc03b0"),
    ]
)

