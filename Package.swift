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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B92F01A2-7914-4CCE-B5EF-3697FCB38588/libimobiledevice.xcframework.zip", checksum: "6f998449ad8e31c2b96b51b54c1a9add051859938e26474b90f093f8e1272b7f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B92F01A2-7914-4CCE-B5EF-3697FCB38588/libimobiledevice_glue.xcframework.zip", checksum: "e59a352efa0474614b50369198e0d2b74bf822243e3d1123ada61b5bafb8950b"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B92F01A2-7914-4CCE-B5EF-3697FCB38588/libplist.xcframework.zip", checksum: "777c8ee085cb2e32ddcc1f36b5b1b6f6f7523a0f906be394f98e4782f7057a5d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B92F01A2-7914-4CCE-B5EF-3697FCB38588/libtatsu.xcframework.zip", checksum: "54a741e9b8914a36804e040e875afd57aa05e8f8a5eb3f05ce9e3424a1fc00a3"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.B92F01A2-7914-4CCE-B5EF-3697FCB38588/libusbmuxd.xcframework.zip", checksum: "723ad7ba5a9de10d302810cd4afdb17be726d0b25d6c8df3eae8b63c3fa4bd81"),
    ]
)

