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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.309F504A-AE2D-465E-978C-07E969F60782/libimobiledevice.xcframework.zip", checksum: "68e746c565541b49011830b85900ed281e30ae475825203047ab54522d714850"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.309F504A-AE2D-465E-978C-07E969F60782/libimobiledevice_glue.xcframework.zip", checksum: "568051cd9dc2658de974f6406c802e678eb52d5fe6c3ea3177e691580b13deb0"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.309F504A-AE2D-465E-978C-07E969F60782/libplist.xcframework.zip", checksum: "4727c2b80fcae5212b25b25cef91764e32d4361d8ffc10d8e8bee53274de0e38"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.309F504A-AE2D-465E-978C-07E969F60782/libtatsu.xcframework.zip", checksum: "cada246d416e68f30a529d0ef2f2a51b8f5b1127d9a4ba27406b953030da5c78"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.309F504A-AE2D-465E-978C-07E969F60782/libusbmuxd.xcframework.zip", checksum: "cbd17a226dbe6f31c2732112f359c1d71eff26b7e77ca18fd2d7caa06071eac6"),
    ]
)

