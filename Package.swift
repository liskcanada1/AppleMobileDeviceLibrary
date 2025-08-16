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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5660BC1C-1631-4039-9206-9922DABC4836/libimobiledevice.xcframework.zip", checksum: "c1c688d75c1ff4e6e1492ca70b8659ef03d3c757acf2e842eb69c9acd0b2d541"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5660BC1C-1631-4039-9206-9922DABC4836/libimobiledevice_glue.xcframework.zip", checksum: "f828f774f1dd1838ba3eae92619bbe77ac029c4bc2c8ac3fea99d7116a2dbe48"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5660BC1C-1631-4039-9206-9922DABC4836/libplist.xcframework.zip", checksum: "a71b422dd01b3db6634c0b806c0a49a2ac340b88f6f4a103bcbe88b70729ef6b"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5660BC1C-1631-4039-9206-9922DABC4836/libtatsu.xcframework.zip", checksum: "a8842de1c16747274ff9d1e0f0649e1eee3d799cc09bcc6e9be13c18059b4ab9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.5660BC1C-1631-4039-9206-9922DABC4836/libusbmuxd.xcframework.zip", checksum: "34abb9644b8121ce2d39e1159ed513aad9c21cbf4a0130c2c275e48d70f20c5f"),
    ]
)

