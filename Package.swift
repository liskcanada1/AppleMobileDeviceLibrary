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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CB54877B-F950-495A-89A2-DDFF5EC6C6EE/libimobiledevice.xcframework.zip", checksum: "65d5e1b69f6dc2893f1a69923a353f249a31fc85547076082a657528a3103ea7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CB54877B-F950-495A-89A2-DDFF5EC6C6EE/libimobiledevice_glue.xcframework.zip", checksum: "9a5344d21cecb44432e2282d7c3b0e0c2011b04dedbf3bbee111e61782d77f27"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CB54877B-F950-495A-89A2-DDFF5EC6C6EE/libplist.xcframework.zip", checksum: "ad4bc92eef07c3f5d3d986e7e095e974ce467d8d27c0d94fd2f32cea59a845a1"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CB54877B-F950-495A-89A2-DDFF5EC6C6EE/libtatsu.xcframework.zip", checksum: "7745d9ac06756a81a8aeb2e4a5f5153c053b9286293775f84d2dd98bb338db70"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.CB54877B-F950-495A-89A2-DDFF5EC6C6EE/libusbmuxd.xcframework.zip", checksum: "ac926f5d66a257ea2e25ded6a8406de62264ddfb24db76eda25ff2de2de99d0a"),
    ]
)

