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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6A0AC705-B284-4E0C-AA07-888DE869C19C/libimobiledevice.xcframework.zip", checksum: "5afea8b79aef5126de39357d211fce5635b059971990cabbac5255b12fd0cce4"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6A0AC705-B284-4E0C-AA07-888DE869C19C/libimobiledevice_glue.xcframework.zip", checksum: "a4c39c4a7304849424429b15dde315a93a7cb6f70cbbbba410133f72da3c0e13"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6A0AC705-B284-4E0C-AA07-888DE869C19C/libplist.xcframework.zip", checksum: "42e7b2e3388d6c075cd370dbc2f98ba775ee3c7bca8d5ac1f23cac8eddc37254"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6A0AC705-B284-4E0C-AA07-888DE869C19C/libtatsu.xcframework.zip", checksum: "3d67c6266dcf17d2b66b4a2559a6b7772dec24069d7082f8324fe26d14c73259"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.6A0AC705-B284-4E0C-AA07-888DE869C19C/libusbmuxd.xcframework.zip", checksum: "5f0a83b5db48e6d957b527bbffdf086c8a064dcb6f7a748b5007ac83e79fb2e8"),
    ]
)

