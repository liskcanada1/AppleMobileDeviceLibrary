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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E70AA0D4-D447-40E7-9E09-8797D6D04C55/libimobiledevice.xcframework.zip", checksum: "4b4dc3829c0f968aebd609b975770831e860fdce75957f6f9a39d9b52d9e7050"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E70AA0D4-D447-40E7-9E09-8797D6D04C55/libimobiledevice_glue.xcframework.zip", checksum: "916fff58ce39cc540d5d0a6200c28fce681f9ab48f9033b14f75f725e636d871"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E70AA0D4-D447-40E7-9E09-8797D6D04C55/libplist.xcframework.zip", checksum: "970c01b7d79563369d254f14e8dbfeee218d3fe4e6d93ad283734b2769415e44"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E70AA0D4-D447-40E7-9E09-8797D6D04C55/libtatsu.xcframework.zip", checksum: "ff1f0072d65d3e394de7d28348aeabcb5162b534aff114719a4703f71d97374a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E70AA0D4-D447-40E7-9E09-8797D6D04C55/libusbmuxd.xcframework.zip", checksum: "e816988f69f75081390a04994b71097f230118481b447a045b6dca9700546c75"),
    ]
)

