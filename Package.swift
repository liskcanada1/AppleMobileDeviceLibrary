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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0524408A-3804-4C59-A346-FD61E5F1B6E4/libimobiledevice.xcframework.zip", checksum: "2ea7042087337b4145acf80c8f84cd96c1bf43ef0853b21521c54f34666af703"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0524408A-3804-4C59-A346-FD61E5F1B6E4/libimobiledevice_glue.xcframework.zip", checksum: "dbc32351b5175b2f01e3cbe495fd9b248c685a1e8a7047522240c2ea84debb95"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0524408A-3804-4C59-A346-FD61E5F1B6E4/libplist.xcframework.zip", checksum: "02c2b0e50fd005c33d866ff97043d5d4db8bef0c4cdb481c1010cbcf52263f6d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0524408A-3804-4C59-A346-FD61E5F1B6E4/libtatsu.xcframework.zip", checksum: "8819252a527dddd160d80159e00b435b078e7c68a3204cb6b7809bad9c841522"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.0524408A-3804-4C59-A346-FD61E5F1B6E4/libusbmuxd.xcframework.zip", checksum: "8c7e64ec2dd2bbcf2e2a7adeb72f989296cb48c06ad14d488dc1331b598e0f2c"),
    ]
)

