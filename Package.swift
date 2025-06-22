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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4E32AD29-678A-408A-AADD-5AF0C30EA569/libimobiledevice.xcframework.zip", checksum: "ef9430f654926990dd9e0cb89e99897bf480d0d1afbb13aeaaba23b8b0aa9316"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4E32AD29-678A-408A-AADD-5AF0C30EA569/libimobiledevice_glue.xcframework.zip", checksum: "3024383b157892527e487cbbf7ef89b7d83c1029cd0a14a0f578d946085a76eb"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4E32AD29-678A-408A-AADD-5AF0C30EA569/libplist.xcframework.zip", checksum: "3b701623740b9c598c203c30a555e5f9bff6513e02da969784173a4eb46b0036"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4E32AD29-678A-408A-AADD-5AF0C30EA569/libtatsu.xcframework.zip", checksum: "0be304c6f3ed36144700ed42d20138a8836037bf7e6d6bc93649ac67d8e6ac7f"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.4E32AD29-678A-408A-AADD-5AF0C30EA569/libusbmuxd.xcframework.zip", checksum: "04d651e2cdd377f4164814f9036ecc1d2463f07126be21e2fe3bb4a1a6070aef"),
    ]
)

