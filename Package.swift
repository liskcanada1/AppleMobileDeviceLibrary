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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C5CA3F9C-4C22-4397-BB10-1CC6CB01173F/libimobiledevice.xcframework.zip", checksum: "10b34d33eee40aaf45e67258836f5da8d81152ac6b5448536e6edaeaea850ed8"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C5CA3F9C-4C22-4397-BB10-1CC6CB01173F/libimobiledevice_glue.xcframework.zip", checksum: "c893dd221948f73419459e00900c24204964dedc8230a98c998f3e0748a07cb7"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C5CA3F9C-4C22-4397-BB10-1CC6CB01173F/libplist.xcframework.zip", checksum: "4977eaac3797911e9572c32ff1e50c4ee3775f3fafb054970ce4a2cfdcbc0b9d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C5CA3F9C-4C22-4397-BB10-1CC6CB01173F/libtatsu.xcframework.zip", checksum: "227aba2451127a3ccec45312edb75e72ea264fb3fb221290e13cef39e547af79"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C5CA3F9C-4C22-4397-BB10-1CC6CB01173F/libusbmuxd.xcframework.zip", checksum: "742207aa07418354cc4b533c89405d6f7178f27fbb537ea8422e0f0ce92f2194"),
    ]
)

