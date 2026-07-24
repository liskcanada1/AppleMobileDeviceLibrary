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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3C593FB-4F25-4DEE-9097-1CE08225B8B6/libimobiledevice.xcframework.zip", checksum: "fc305d4edc656913f8afa08ae01021172a66374e83f293d7e50949e43c961157"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3C593FB-4F25-4DEE-9097-1CE08225B8B6/libimobiledevice_glue.xcframework.zip", checksum: "9ff1944ced1c3aa0939b7c4f3b049a442661d8458f1f4439ff6c27cc0650015e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3C593FB-4F25-4DEE-9097-1CE08225B8B6/libplist.xcframework.zip", checksum: "0211e98c45777efdb5c273191bea4027b46a8b2484bea67fd53c77d73ed944c0"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3C593FB-4F25-4DEE-9097-1CE08225B8B6/libtatsu.xcframework.zip", checksum: "ca2b2d0f4498afd4c8ee3dcdbdd7893d23705d924adb0d4b90c566b190d792f9"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E3C593FB-4F25-4DEE-9097-1CE08225B8B6/libusbmuxd.xcframework.zip", checksum: "853b2f87a99be0a565f3dc0bf32e0a7b1dde9fc174fea5d461a291882ec2e3a5"),
    ]
)

