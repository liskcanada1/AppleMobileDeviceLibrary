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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.373510B1-DCA4-4C5F-9D11-048A59950274/libimobiledevice.xcframework.zip", checksum: "bc1db9973c54586b40c25f2baa2a426da2b3a9a09ee06c213dca1593094f0182"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.373510B1-DCA4-4C5F-9D11-048A59950274/libimobiledevice_glue.xcframework.zip", checksum: "7d3ed76042fdffa8ad14808fe83e3b6d7e21ca82c79bf78e276c2c2252c910ee"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.373510B1-DCA4-4C5F-9D11-048A59950274/libplist.xcframework.zip", checksum: "252c95e5261fb66911972ff7b211e9b8ac8d6d9093e36ec235a6acabaa08d70c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.373510B1-DCA4-4C5F-9D11-048A59950274/libtatsu.xcframework.zip", checksum: "c2a5965e7f4383a6f8a8697d2ab84ef331a22310856efbf31664d9d3747222c8"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.373510B1-DCA4-4C5F-9D11-048A59950274/libusbmuxd.xcframework.zip", checksum: "391f57b96cdb2196301b60af1553f3ffd7b09ea79e4230a781dcf0d03f5f1444"),
    ]
)

