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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2A2C4DBE-CD05-4909-B579-AC9B0A9B8BB0/libimobiledevice.xcframework.zip", checksum: "cad99f68aa8f569dfb44bce1ca5ac784cc6124b844fdcf972d4324bc23e8247c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2A2C4DBE-CD05-4909-B579-AC9B0A9B8BB0/libimobiledevice_glue.xcframework.zip", checksum: "147b580a4c9f296abaf58c861e3b7c51c6a80bbb07bdd147bd4cc51d468f0354"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2A2C4DBE-CD05-4909-B579-AC9B0A9B8BB0/libplist.xcframework.zip", checksum: "3e42b526db68fc714206f9a43dd41e71d5424dd5ce0d686fb24bc89317797a64"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2A2C4DBE-CD05-4909-B579-AC9B0A9B8BB0/libtatsu.xcframework.zip", checksum: "5355bcfaa9e056c1c51e54cffaf857ef2d9f8d243ccba445554354a99aafbaf3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.2A2C4DBE-CD05-4909-B579-AC9B0A9B8BB0/libusbmuxd.xcframework.zip", checksum: "b85ab3d82544568537e53d89282e9ffc51cf02771c75cedc6be9836deac8e160"),
    ]
)

