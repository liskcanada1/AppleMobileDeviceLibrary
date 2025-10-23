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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.30E001CF-58A3-4D8A-A349-339BB33AADDC/libimobiledevice.xcframework.zip", checksum: "aacbff1fd37d8551dbe01e3c12ca46d58d7e54196b766aee962bc92c31212b54"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.30E001CF-58A3-4D8A-A349-339BB33AADDC/libimobiledevice_glue.xcframework.zip", checksum: "713b225da93b6c79cdab934b8ba3f187ae6edf611a48839b0d62a5d7e198257e"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.30E001CF-58A3-4D8A-A349-339BB33AADDC/libplist.xcframework.zip", checksum: "e501f63c27ae5aaa3c8f9f663514d320007dd73808aef6fa99b0a69834ce8929"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.30E001CF-58A3-4D8A-A349-339BB33AADDC/libtatsu.xcframework.zip", checksum: "b6a95f68a02a35ed1324c365dea4371a3665bd3ce26ea2ddde0b3f7c124ab042"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.30E001CF-58A3-4D8A-A349-339BB33AADDC/libusbmuxd.xcframework.zip", checksum: "8dc8ebdf828937cd443e3930f3936879a0a0d4d17118fbfd655b885223e9738e"),
    ]
)

