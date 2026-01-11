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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F4781DDB-DFEE-4174-A16B-24E5D3B6B87A/libimobiledevice.xcframework.zip", checksum: "334600ceab36b7e0f54019e0665be74807aec705188dedf4d1a1da608ae1f6a8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F4781DDB-DFEE-4174-A16B-24E5D3B6B87A/libimobiledevice_glue.xcframework.zip", checksum: "f5c5cb16329a5a2570d60efa2388e47ba6f6a0c4319dffff6cf0efe7efc249d3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F4781DDB-DFEE-4174-A16B-24E5D3B6B87A/libplist.xcframework.zip", checksum: "8dc5fc3135403b9ef35887300077c9cba5d36537d7a0ba951cb6d34ce236f208"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F4781DDB-DFEE-4174-A16B-24E5D3B6B87A/libtatsu.xcframework.zip", checksum: "c6bf3df0243c8bc3dcb848b3633068c88f73ea8d0153e6199303915e4cdbc746"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F4781DDB-DFEE-4174-A16B-24E5D3B6B87A/libusbmuxd.xcframework.zip", checksum: "197527bc9c8f87f12dc17cfcb5dafb2b9c4b8b3247d2f267d35f2ae46931dcba"),
    ]
)

