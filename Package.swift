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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.02B94A40-0299-487A-A7DE-650293E0818B/libimobiledevice.xcframework.zip", checksum: "26e1f44f550505b57fdd68a9a6f8908a77238678c08e2b440d36b79bd28f7f8f"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.02B94A40-0299-487A-A7DE-650293E0818B/libimobiledevice_glue.xcframework.zip", checksum: "dfa96990a8e1157939ce428f7a51c31c3e9d1adf87f3d4d814dbb2ba548557a1"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.02B94A40-0299-487A-A7DE-650293E0818B/libplist.xcframework.zip", checksum: "bb7db0cff30bd2db11f019211a43cc2e709bcf48b75172d0e27378d7d1accd29"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.02B94A40-0299-487A-A7DE-650293E0818B/libtatsu.xcframework.zip", checksum: "21523074574795c5d47dab384a215bde2a0ce8e3cb6594167013cb752024e2f4"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.02B94A40-0299-487A-A7DE-650293E0818B/libusbmuxd.xcframework.zip", checksum: "146dfbc88a2593e8ee3ee97c54badf5449c36b066c03d98ab927b74dddbb6a64"),
    ]
)

