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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BD70AB01-6F51-4085-B204-4283E47A1889/libimobiledevice.xcframework.zip", checksum: "f9143f45e7d37c9e337380a610358673fd0b7d7d6fb37d1c8304197c8058da06"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BD70AB01-6F51-4085-B204-4283E47A1889/libimobiledevice_glue.xcframework.zip", checksum: "b7cca19823899489106d3c973fd671b6f21a7e3408aa5f38bcde75cd157ca124"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BD70AB01-6F51-4085-B204-4283E47A1889/libplist.xcframework.zip", checksum: "d886ff05ca5bdde44347ed487b84a69822704feabf89366472aeef4041b1d57a"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BD70AB01-6F51-4085-B204-4283E47A1889/libtatsu.xcframework.zip", checksum: "b9d0cdd31109013abf4bb70f8a80a08728069af3569ac508180a9edc113b3503"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BD70AB01-6F51-4085-B204-4283E47A1889/libusbmuxd.xcframework.zip", checksum: "b6b446f6e0b976d63a3abf358da8a65c0c0d749c5b1c053a571bfffab299d675"),
    ]
)

