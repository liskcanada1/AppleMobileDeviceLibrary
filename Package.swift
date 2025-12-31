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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7825E90A-6BEA-4406-860B-A04A2D1290CF/libimobiledevice.xcframework.zip", checksum: "e72da8da32ab7457bbaae2c8e45bac890255d01380c8e566e928beb487a39f22"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7825E90A-6BEA-4406-860B-A04A2D1290CF/libimobiledevice_glue.xcframework.zip", checksum: "d116495b17cd90f8f8b5e9abfa2a0df42ed03b73dcabef84d7f832291cb86cbc"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7825E90A-6BEA-4406-860B-A04A2D1290CF/libplist.xcframework.zip", checksum: "13222ccb177801c8cb5d413d7de778b7424ce1ecb7a39a1f7ae6689eb4fb33ac"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7825E90A-6BEA-4406-860B-A04A2D1290CF/libtatsu.xcframework.zip", checksum: "74907af6cca19e0b855c9a81e67ff6ff7f0eb1b9f0de96d1983ecaf44a4b3d07"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.7825E90A-6BEA-4406-860B-A04A2D1290CF/libusbmuxd.xcframework.zip", checksum: "7d95a15853e4947c6859239c0fd28275ec5fa4fe744c3c0e0782d553993bb248"),
    ]
)

