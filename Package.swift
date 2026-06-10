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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.48ED54CA-618C-4073-826A-1EC2D3AA290B/libimobiledevice.xcframework.zip", checksum: "d6b3484b41bcaa2ebd17344d49ec40af0d759c54e87ae649330891c362c0c4fb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.48ED54CA-618C-4073-826A-1EC2D3AA290B/libimobiledevice_glue.xcframework.zip", checksum: "cf4c38a4f999a8f57811fa59b795ae038f7a3ce4294f4418d4ade4f735aa57a6"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.48ED54CA-618C-4073-826A-1EC2D3AA290B/libplist.xcframework.zip", checksum: "a403bfb5ddbe9eabc4b39c54ad8b9c83c3c09f3b7160d3cfb1cce8ef742d8e32"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.48ED54CA-618C-4073-826A-1EC2D3AA290B/libtatsu.xcframework.zip", checksum: "cffd16796d7c544e1571e98fe387912c46394d86366dbd8f0ee5f06612a27384"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.48ED54CA-618C-4073-826A-1EC2D3AA290B/libusbmuxd.xcframework.zip", checksum: "f832ba88fb147f6e6af92ba76dd48bea028784df02221b301ee25d5d92a35aa7"),
    ]
)

