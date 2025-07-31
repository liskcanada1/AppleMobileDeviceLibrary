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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.79077F7D-9AE3-48D6-8152-B35396F4A7BD/libimobiledevice.xcframework.zip", checksum: "569ff5a3b0b00b6e666288a5bb15f04e18371419a39dbdce5f2201c4022c29ba"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.79077F7D-9AE3-48D6-8152-B35396F4A7BD/libimobiledevice_glue.xcframework.zip", checksum: "bbd97039480aba70baaf1a9deada2aeb20e5b143a6d6010a9556a846968940fd"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.79077F7D-9AE3-48D6-8152-B35396F4A7BD/libplist.xcframework.zip", checksum: "6d2687d247cb8947aacb5b3cb35c929a8483b8a5faf7e5297b5a8ffe10924224"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.79077F7D-9AE3-48D6-8152-B35396F4A7BD/libtatsu.xcframework.zip", checksum: "cc8147057f1d8aa86448eeda0eaad319ea0ba31c4a29e219424b7f82b231ea42"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.79077F7D-9AE3-48D6-8152-B35396F4A7BD/libusbmuxd.xcframework.zip", checksum: "c149cde55c4415bf1636bfd97edbcb73b1f2635d260375a3b12eddef3c46181c"),
    ]
)

