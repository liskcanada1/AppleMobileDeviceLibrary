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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E84AF432-A2A0-409D-9CBB-6262DB5B1508/libimobiledevice.xcframework.zip", checksum: "3454b64437e42e991e47f8c383c7d2a3f05898442d55b99a1076c405b6f79dae"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E84AF432-A2A0-409D-9CBB-6262DB5B1508/libimobiledevice_glue.xcframework.zip", checksum: "6053a10770390d7dd97e5209208a476a0483f7aecd4fc0118230e55284b5f48d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E84AF432-A2A0-409D-9CBB-6262DB5B1508/libplist.xcframework.zip", checksum: "9570f83a78721850d2cbbfb4cfc21c32119456b258decd377324ba81310e6757"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E84AF432-A2A0-409D-9CBB-6262DB5B1508/libtatsu.xcframework.zip", checksum: "1b360633bdd4d5f3084bca63cc1581d489a147665fbac4bab1d3d5499f7671eb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.E84AF432-A2A0-409D-9CBB-6262DB5B1508/libusbmuxd.xcframework.zip", checksum: "6541c9392b8d3db362c72da369a5e8c1c4da935fc6b95c8259752a686cf7ea88"),
    ]
)

