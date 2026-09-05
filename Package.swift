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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2D9EACAB-9440-47EE-B23C-2F4C25A97A97/libimobiledevice.xcframework.zip", checksum: "49b458b2563ff2b8ae2a821382f11fb3aaf725b6e7064f559e2e38f86100a117"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2D9EACAB-9440-47EE-B23C-2F4C25A97A97/libimobiledevice_glue.xcframework.zip", checksum: "030ee373a793b1290071314d994973b9dd53ab60a4919ab7ef20f3663db9fcd4"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2D9EACAB-9440-47EE-B23C-2F4C25A97A97/libplist.xcframework.zip", checksum: "783ba1050488c475b3b718b2b552ba1f9ffe1395fe2a978adafb6dd920f989b8"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2D9EACAB-9440-47EE-B23C-2F4C25A97A97/libtatsu.xcframework.zip", checksum: "c953159e6f747563cb22aad2e51d8ce8bf57493a94ddc3f7ca5cf24f1790c4c0"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2D9EACAB-9440-47EE-B23C-2F4C25A97A97/libusbmuxd.xcframework.zip", checksum: "488c92b7ce1d86f8bd7ace2e5126d91b25ea4defbf76b9dff10936f97934bd9f"),
    ]
)

