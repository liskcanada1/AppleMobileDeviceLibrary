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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BDAEB8CF-F24B-4EA4-8546-5EC04D03E51F/libimobiledevice.xcframework.zip", checksum: "bc80e5dd648e7f0ce17fd79197c1d18d509e286274a354d7920e0393a12519d7"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BDAEB8CF-F24B-4EA4-8546-5EC04D03E51F/libimobiledevice_glue.xcframework.zip", checksum: "86102d33c82086955340671238baa890b40d7085d0c294e43034777744721399"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BDAEB8CF-F24B-4EA4-8546-5EC04D03E51F/libplist.xcframework.zip", checksum: "c283e0ab1b24e0f00879f7332526c99bd2a67561da1c3cb253ab9669d6cc9237"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BDAEB8CF-F24B-4EA4-8546-5EC04D03E51F/libtatsu.xcframework.zip", checksum: "d68e104ed1ed7d4c117ec3f8eb3a5570e7c88393f23f7b1e2628efbf493f5e60"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.BDAEB8CF-F24B-4EA4-8546-5EC04D03E51F/libusbmuxd.xcframework.zip", checksum: "10852b786f8600b84e21f16dbd7efca57a77d641127c417e9109ab888b0753dd"),
    ]
)

