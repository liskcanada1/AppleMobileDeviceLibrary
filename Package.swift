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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F50C3D27-28A8-4144-B557-22FD03B235B5/libimobiledevice.xcframework.zip", checksum: "31f0cea629042272484e2a8822f0203c8b9f5858b9df4c1d8c6dd655df79ed33"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F50C3D27-28A8-4144-B557-22FD03B235B5/libimobiledevice_glue.xcframework.zip", checksum: "353871f3eac669b72d90477424d3ae0a73e4cf6f4255d81b5d792e01f4229c4d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F50C3D27-28A8-4144-B557-22FD03B235B5/libplist.xcframework.zip", checksum: "edbe4d8a32eda8e13e72673d8a87655fe55394b8ede5183fade1ad93dd48dc06"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F50C3D27-28A8-4144-B557-22FD03B235B5/libtatsu.xcframework.zip", checksum: "5d370acb8eeb51e36fba3fe535890e9a3ff226e0fae604bec64ed1fb2d930457"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F50C3D27-28A8-4144-B557-22FD03B235B5/libusbmuxd.xcframework.zip", checksum: "12c0d299e8a1eb80e7da553da08523653b758ceaa42c582f03f624a02d2cdc7a"),
    ]
)

