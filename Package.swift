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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B89DA183-94EC-4785-87E2-0722664AAFAD/libimobiledevice.xcframework.zip", checksum: "5fbc5d49818147a9c7a5e7ad5e2a94ba55ce46f0a6a65eb87f26aea6ce0d0ced"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B89DA183-94EC-4785-87E2-0722664AAFAD/libimobiledevice_glue.xcframework.zip", checksum: "904ea2965243afe8dbb350b9848c5f7b409e9a18c99b8525bb6797d0e5e587eb"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B89DA183-94EC-4785-87E2-0722664AAFAD/libplist.xcframework.zip", checksum: "f982746f9866af3e78d252fd5a4b4e3f81bb31a29fc18e7a384f5de1f4f45348"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B89DA183-94EC-4785-87E2-0722664AAFAD/libtatsu.xcframework.zip", checksum: "0f11f785fce6e046c3e3113c0a73fcb4032038787e79641d9eebc3440e262822"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B89DA183-94EC-4785-87E2-0722664AAFAD/libusbmuxd.xcframework.zip", checksum: "3817781349bc52994a0d0748c0f14f47c794b0d88012f279dfb6178b3eb55dbf"),
    ]
)

