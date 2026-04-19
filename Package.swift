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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2EC2D9E2-45FA-41CF-9900-6E7B3CF2D8DE/libimobiledevice.xcframework.zip", checksum: "be7bd7a8e3948457d51ba46321c8296529f5ea83f7d2c0eba1f68a176c690fb4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2EC2D9E2-45FA-41CF-9900-6E7B3CF2D8DE/libimobiledevice_glue.xcframework.zip", checksum: "b28ec0ed604505625fbe6f1c5b5a4ec264f2efeeb00fc1e4af6f0f886214dd49"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2EC2D9E2-45FA-41CF-9900-6E7B3CF2D8DE/libplist.xcframework.zip", checksum: "b8a5ba3c61a527a34f1b036536b4bd11ac453d6e5d515649ae441d315fdb6b0f"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2EC2D9E2-45FA-41CF-9900-6E7B3CF2D8DE/libtatsu.xcframework.zip", checksum: "c60459d21f5823c43e92285616d2462b1e438efbaf645f4e799d1e9502d4343a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2EC2D9E2-45FA-41CF-9900-6E7B3CF2D8DE/libusbmuxd.xcframework.zip", checksum: "fba99db07323bbbdb54bcc1efc9d38448232020f677bd9003414cdcb86641c4f"),
    ]
)

