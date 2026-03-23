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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C4213266-D649-4D66-AFDD-407F4DBF4579/libimobiledevice.xcframework.zip", checksum: "a1fe33d5a3e5a2b5aa12dbd60e4edf54d3fe80c98d9f5c4752f9e8ebfab62569"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C4213266-D649-4D66-AFDD-407F4DBF4579/libimobiledevice_glue.xcframework.zip", checksum: "764b805bef442e10669debaa21d52f7267836b9e341c11037a42b851620629a8"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C4213266-D649-4D66-AFDD-407F4DBF4579/libplist.xcframework.zip", checksum: "b9d6f6aae3f802ad4f7c43f31155098de21abc929955d9ce9396577a52ebda31"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C4213266-D649-4D66-AFDD-407F4DBF4579/libtatsu.xcframework.zip", checksum: "b8fd6bc10776c96ad9540bd7f8b01fcb7574157502ed83d3403c7818c6f7f8ac"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C4213266-D649-4D66-AFDD-407F4DBF4579/libusbmuxd.xcframework.zip", checksum: "c03f78050031e2ba343b65c0e2ad948ad69d10b00b077dca56bb4033e0061fed"),
    ]
)

