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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC64720F-37A4-47AD-8843-AD86F82FF19A/libimobiledevice.xcframework.zip", checksum: "16426eda2c151cb91605780f4aa823f60615b97fa70d87f5ac5284a8c48c714a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC64720F-37A4-47AD-8843-AD86F82FF19A/libimobiledevice_glue.xcframework.zip", checksum: "b22c6e76ab9c385119fae6d67576085f3d5383105b48108ae24b7c7befae79a8"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC64720F-37A4-47AD-8843-AD86F82FF19A/libplist.xcframework.zip", checksum: "4e751e4361ca54642c00b8c0aa0a6ea3dd2f3d2eb0cafc85a60212bddd5cf6ae"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC64720F-37A4-47AD-8843-AD86F82FF19A/libtatsu.xcframework.zip", checksum: "9679b1eb5d6589c2144197fe9b7822ace2f9734569e8e93a5d6a64b7c2a1321a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FC64720F-37A4-47AD-8843-AD86F82FF19A/libusbmuxd.xcframework.zip", checksum: "187efd54a4b025300058904ffd86a58016c51c17235d2dadaaa59c59c27aa581"),
    ]
)

