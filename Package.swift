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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D1B72BD1-B952-45B5-81D7-CFEE8C579429/libimobiledevice.xcframework.zip", checksum: "e40844c50bcd8e1d6e4ac940c987b4f7b7b0fe13de261981f404ffa951049d91"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D1B72BD1-B952-45B5-81D7-CFEE8C579429/libimobiledevice_glue.xcframework.zip", checksum: "d3c502fa81549aecab64454add39b5bd8c6e07d67a40a904c6fcd9bbc9b16458"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D1B72BD1-B952-45B5-81D7-CFEE8C579429/libplist.xcframework.zip", checksum: "2c9a48f3dffe9056f74470e68d5aa3181ef28d2d82ce9ffbfebb0fda2f1184d8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D1B72BD1-B952-45B5-81D7-CFEE8C579429/libtatsu.xcframework.zip", checksum: "42f9d8bbd06a90434d665d68aaf1831ed55f7e86a2fa86f61b509431e3145fcb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D1B72BD1-B952-45B5-81D7-CFEE8C579429/libusbmuxd.xcframework.zip", checksum: "77cde7535dc160d479866b105bb6c94e1155eadf6343b5b6afe691f5f48f81f0"),
    ]
)

