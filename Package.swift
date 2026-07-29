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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3BB52055-4C38-40AC-91F0-DFEAE0AB1299/libimobiledevice.xcframework.zip", checksum: "d7281148ae6e5d5e6d96b47b31efdff01c53708c7cda989875e59bb9e0c365a6"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3BB52055-4C38-40AC-91F0-DFEAE0AB1299/libimobiledevice_glue.xcframework.zip", checksum: "f03917d210d8390e623704289961e0efbf002a556b3ac26d21174e439011a57a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3BB52055-4C38-40AC-91F0-DFEAE0AB1299/libplist.xcframework.zip", checksum: "888ee39b28e4a5bbb0e12d24386e0f834a79db995cdc90821d33dc74b5f065f7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3BB52055-4C38-40AC-91F0-DFEAE0AB1299/libtatsu.xcframework.zip", checksum: "615a0f65aaffdcf8c090dc5144d648096d3ede33c2f974b9392cbfa28f54602b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.3BB52055-4C38-40AC-91F0-DFEAE0AB1299/libusbmuxd.xcframework.zip", checksum: "6dd57a788adb9de938f75f26dbdacc742c9e1069b1ee33ec07a0a9bef8603265"),
    ]
)

