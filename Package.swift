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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3E25EA0-7E5A-470F-A786-7B0E30BD1530/libimobiledevice.xcframework.zip", checksum: "943e548a52aff0ceae71f4747c371ce5f03ab2bd2f3a7a667711277975e498b1"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3E25EA0-7E5A-470F-A786-7B0E30BD1530/libimobiledevice_glue.xcframework.zip", checksum: "0c15b0dfc4c26840d1c36e516cae36da44c7570a7d25f78a4e8a52a048749e28"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3E25EA0-7E5A-470F-A786-7B0E30BD1530/libplist.xcframework.zip", checksum: "304206d39eff3a2e93894e2b971d96d0c65425dc0ff5ac7a2492ba920d7740a6"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3E25EA0-7E5A-470F-A786-7B0E30BD1530/libtatsu.xcframework.zip", checksum: "a5a3b54b43aa5fdf5b82e8b950227039ebb5a421821bf3649c8ab09023f5d1f7"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.D3E25EA0-7E5A-470F-A786-7B0E30BD1530/libusbmuxd.xcframework.zip", checksum: "33ff8f81ace11f95335263e1afeda967f48374779df97f6bed8e5dc69765168e"),
    ]
)

