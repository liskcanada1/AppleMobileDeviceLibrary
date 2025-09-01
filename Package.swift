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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4A60EF42-BA8B-4CCB-9609-7D954DA17ED6/libimobiledevice.xcframework.zip", checksum: "4318effb5ec0526ac52b2615b5bdf24114be9a250af121127432065bbb3506ec"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4A60EF42-BA8B-4CCB-9609-7D954DA17ED6/libimobiledevice_glue.xcframework.zip", checksum: "9ef8891f22d64810165e56af33854fbdb8dcc22097b4f534b296663d0810e767"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4A60EF42-BA8B-4CCB-9609-7D954DA17ED6/libplist.xcframework.zip", checksum: "5bfde519c64da0925d104f6c38df17b94f740282292a3d3fc7570ccf6657582c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4A60EF42-BA8B-4CCB-9609-7D954DA17ED6/libtatsu.xcframework.zip", checksum: "1566a0c4de310babea9847396ab05b2afd68d07c03dab76746dff19a58962c71"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4A60EF42-BA8B-4CCB-9609-7D954DA17ED6/libusbmuxd.xcframework.zip", checksum: "7e6b6e08ed72e88520a7a4eef8275fe6e8cd0a21d5ba6568d38570fb9e27a442"),
    ]
)

