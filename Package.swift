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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.752B7EA8-C3EE-4AE8-8B46-C7BF4B473321/libimobiledevice.xcframework.zip", checksum: "2c0e635c83e22dd8a4013bb0d3530ff9debeb5386fbfe23fffc06532d2aa8734"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.752B7EA8-C3EE-4AE8-8B46-C7BF4B473321/libimobiledevice_glue.xcframework.zip", checksum: "a42329c932b66de98d6c041f6e30e220d9edca286ed4a8d11392e7525c140a2c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.752B7EA8-C3EE-4AE8-8B46-C7BF4B473321/libplist.xcframework.zip", checksum: "c25bb61098b6d38781cac870ed13da4c11021cd25c9eb30a82a70e516726b943"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.752B7EA8-C3EE-4AE8-8B46-C7BF4B473321/libtatsu.xcframework.zip", checksum: "78040199c6112eac721a6732eb1b7a5a7cb6572e432cb9ba27e37ecd50732f2d"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.752B7EA8-C3EE-4AE8-8B46-C7BF4B473321/libusbmuxd.xcframework.zip", checksum: "569718ea09956196ea88e95862c5709f878c1e6c0ee6ac96461ca58920a71ae3"),
    ]
)

