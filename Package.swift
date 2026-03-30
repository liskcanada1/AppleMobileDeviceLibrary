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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4E44E099-79EA-4C4F-BE21-FD4E0EBE0437/libimobiledevice.xcframework.zip", checksum: "378d92ed057f755820d9b0aa45d92fbc0dfe1ec78a21a53d2c4355d9d183922a"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4E44E099-79EA-4C4F-BE21-FD4E0EBE0437/libimobiledevice_glue.xcframework.zip", checksum: "0e55ba6cadf2d14fcae157026e4af2e6c5af9dda49bc8be04c89689eec08322f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4E44E099-79EA-4C4F-BE21-FD4E0EBE0437/libplist.xcframework.zip", checksum: "d5de720aae14412f7d0e33c49f704812294a5843f7de9c04d0449ae391636e84"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4E44E099-79EA-4C4F-BE21-FD4E0EBE0437/libtatsu.xcframework.zip", checksum: "9090ea297578ef21ab7440a8b15f0b37086eb475c7fb5b0cf873251e424e3bf6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4E44E099-79EA-4C4F-BE21-FD4E0EBE0437/libusbmuxd.xcframework.zip", checksum: "8d34d1b17daa0323e1990bc6e42ebabf1b4fb8a66175af3685889bb90192d444"),
    ]
)

