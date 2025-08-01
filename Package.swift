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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E01E0B1-780C-40B1-8D0A-032F9CE9CE46/libimobiledevice.xcframework.zip", checksum: "1fc57e86bee24a05e1154d9fcd8ca64530d34bce37a02509a2b45d0e8f2fc686"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E01E0B1-780C-40B1-8D0A-032F9CE9CE46/libimobiledevice_glue.xcframework.zip", checksum: "52868f5e8a661758b02e89a09b652ddfaca1cab45e3b87c4410f561d7730bdf4"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E01E0B1-780C-40B1-8D0A-032F9CE9CE46/libplist.xcframework.zip", checksum: "3b45f1bb9e5030abe0a74bd03bbe312fc46349fda8718930c952c67f96d2cda8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E01E0B1-780C-40B1-8D0A-032F9CE9CE46/libtatsu.xcframework.zip", checksum: "1bef8348f963707d422bd1d80ce0ed787d532b9826f1c7d38000c560e4b4f8ed"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8E01E0B1-780C-40B1-8D0A-032F9CE9CE46/libusbmuxd.xcframework.zip", checksum: "016c7ee51bc9b5ee5d3e68c166283d4cb012a59a356712ef6f0e0937d9b3c64e"),
    ]
)

