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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5711920-CBDD-4CA5-ADD1-12761BB033F8/libimobiledevice.xcframework.zip", checksum: "22cb54f3c4816c2e94accf08962b649f1104188f0a2b618e59289ca832141079"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5711920-CBDD-4CA5-ADD1-12761BB033F8/libimobiledevice_glue.xcframework.zip", checksum: "05fdef3e3135c33d8f550e61a453d5f3c48d4df536faad3dd46868973aa3600d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5711920-CBDD-4CA5-ADD1-12761BB033F8/libplist.xcframework.zip", checksum: "100eed26087df395b4c13b26de917e8c293da4c4617cabfe19dcd27f48efe436"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5711920-CBDD-4CA5-ADD1-12761BB033F8/libtatsu.xcframework.zip", checksum: "d36313e5e598b90af52e0745b85a8d6990331a69694f26cf0a476a4c98d667d3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F5711920-CBDD-4CA5-ADD1-12761BB033F8/libusbmuxd.xcframework.zip", checksum: "35eaf674633500dcddd2d57538c75e903eff0eb96e53709b2fa9d8a9377511bf"),
    ]
)

