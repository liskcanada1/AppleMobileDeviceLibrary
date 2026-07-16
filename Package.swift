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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2479A397-FB22-47D5-A812-BAE29FDF1127/libimobiledevice.xcframework.zip", checksum: "1106a8d640fde5a7b98e90856dbebb21906bc2603a3112b25aafb08025749ff8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2479A397-FB22-47D5-A812-BAE29FDF1127/libimobiledevice_glue.xcframework.zip", checksum: "9fabe4d918f2fa93a0851254a860e321cc998e80dea164adb60621bba23df0e1"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2479A397-FB22-47D5-A812-BAE29FDF1127/libplist.xcframework.zip", checksum: "794f9afd88ba9f34d9b929b34fb77cbd1743c00d8c645e5953fc09ce64c0f87d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2479A397-FB22-47D5-A812-BAE29FDF1127/libtatsu.xcframework.zip", checksum: "3a651e87c9de5634607ed0c2398968da619d5f666a85b438e1974bab17a45833"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2479A397-FB22-47D5-A812-BAE29FDF1127/libusbmuxd.xcframework.zip", checksum: "76a035ab25f7a96ca9793250a8278213fab54bd3e54e84997834b3aef69a8fdd"),
    ]
)

