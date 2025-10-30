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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8905FD92-0F9D-467B-8943-14F19AE4FBF0/libimobiledevice.xcframework.zip", checksum: "adf8a284e67acd4ad8d441704a56a90b7fdd0189b72f834266132f7096da44e7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8905FD92-0F9D-467B-8943-14F19AE4FBF0/libimobiledevice_glue.xcframework.zip", checksum: "a14dd4a635d66a69fb6447c6089fa9de35158455e2782dd4920c0211685de681"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8905FD92-0F9D-467B-8943-14F19AE4FBF0/libplist.xcframework.zip", checksum: "bb392c776b261fd0f07e73465606646e87f702e9a01f71d62c23d2e9d291cd6f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8905FD92-0F9D-467B-8943-14F19AE4FBF0/libtatsu.xcframework.zip", checksum: "a5ebafafef1a448334627d98895d81e2f091a656cf523065f792444aafdaf1ea"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.8905FD92-0F9D-467B-8943-14F19AE4FBF0/libusbmuxd.xcframework.zip", checksum: "c85984536c6a66223f3e0ff84d32d1c6a413410382a68d1123fe176fff0cb89f"),
    ]
)

