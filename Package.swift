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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.998E9440-6980-4469-800D-CB8E2FABF9B3/libimobiledevice.xcframework.zip", checksum: "0e15bf6ad2254aec59345ea6170680af7aadf6a63ba1fdc125a0f801d868af9c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.998E9440-6980-4469-800D-CB8E2FABF9B3/libimobiledevice_glue.xcframework.zip", checksum: "fcbd156e61cfde05080c7d5a1c4d73e8deac494a12ba9005aca9350681a6f498"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.998E9440-6980-4469-800D-CB8E2FABF9B3/libplist.xcframework.zip", checksum: "0312409f1ae64218627f81ad8ed7618f17d83c4be6add87a588d485bb56728e2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.998E9440-6980-4469-800D-CB8E2FABF9B3/libtatsu.xcframework.zip", checksum: "36a43d2cd67f87fbda9a1e058dbf9e5863b50ef593a1bb83fe63585f53f0ae93"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.998E9440-6980-4469-800D-CB8E2FABF9B3/libusbmuxd.xcframework.zip", checksum: "ff9a23c73224094501a3c62f0f3d1c6756eb1a7a879069eb3df834a4e51afe28"),
    ]
)

