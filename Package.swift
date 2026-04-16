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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ACF769FF-8F81-4BE6-9A0D-9A8343087032/libimobiledevice.xcframework.zip", checksum: "f81c7946f372faa5698144e8ba1f576329d9516976b9d1ea1998fa3479fbf1a0"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ACF769FF-8F81-4BE6-9A0D-9A8343087032/libimobiledevice_glue.xcframework.zip", checksum: "ff5bc6f655c44d25ec866499d4c9fc19e9fde14bb2206c0806da8868dcebee00"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ACF769FF-8F81-4BE6-9A0D-9A8343087032/libplist.xcframework.zip", checksum: "bfce8889279992329e309c93d1c816002c68732ff935d609d0188784de4cb36f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ACF769FF-8F81-4BE6-9A0D-9A8343087032/libtatsu.xcframework.zip", checksum: "37798398f5fd2c194907a4cefbd4bd401b3006dfb24f6b8dea166a1e03b0c90a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.ACF769FF-8F81-4BE6-9A0D-9A8343087032/libusbmuxd.xcframework.zip", checksum: "f052eb84eea9c082d8f1f8365574e9e933a2e17f3f19658e644dc7d39b15e26d"),
    ]
)

