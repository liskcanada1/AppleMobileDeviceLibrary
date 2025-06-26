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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B3216F5E-DC94-4FDB-BD1C-C2146930494C/libimobiledevice.xcframework.zip", checksum: "e24eb96b13221f24e2e61fabf7075ab84a10b373d95790bf71421fcddd557985"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B3216F5E-DC94-4FDB-BD1C-C2146930494C/libimobiledevice_glue.xcframework.zip", checksum: "da7350cecc36ddbfd8c0fe2a5f755f00dd002ea7d08e1a945978fea6817f40b1"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B3216F5E-DC94-4FDB-BD1C-C2146930494C/libplist.xcframework.zip", checksum: "98ace1d3f1bd96bcff8ff6e6c69671f25463091dd904d46208285838b077b3b7"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B3216F5E-DC94-4FDB-BD1C-C2146930494C/libtatsu.xcframework.zip", checksum: "71b5f17d08a0c7678a03d15209cd6fbf44b15224ddc4e734ff01ee84d4c38756"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B3216F5E-DC94-4FDB-BD1C-C2146930494C/libusbmuxd.xcframework.zip", checksum: "a00875d76216bbbf355a62a15c399a0aa9c9c0116bb153b0f06c72de30ab8bc0"),
    ]
)

