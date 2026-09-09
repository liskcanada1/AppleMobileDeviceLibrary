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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C056CBE3-CF77-4A3A-8F4F-B5CBFC32F17F/libimobiledevice.xcframework.zip", checksum: "9a455cb7fc946774a603ddd04b96662378ce2fdc4dc5a03ac8bf19181cd32e34"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C056CBE3-CF77-4A3A-8F4F-B5CBFC32F17F/libimobiledevice_glue.xcframework.zip", checksum: "cd78e5b55e271c0160431a5f13f2ac6afa46b6ba4922473023b3af4ff2deb87c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C056CBE3-CF77-4A3A-8F4F-B5CBFC32F17F/libplist.xcframework.zip", checksum: "bc9bff7b2f7d237c3b3e2257aadc5bc259868d09ab631f53e9c08034b37cc6d5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C056CBE3-CF77-4A3A-8F4F-B5CBFC32F17F/libtatsu.xcframework.zip", checksum: "bbc87156fe7842ab4d131e7109557e00623c5b19702376cfc16de39299cdb0a6"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C056CBE3-CF77-4A3A-8F4F-B5CBFC32F17F/libusbmuxd.xcframework.zip", checksum: "2085e12e1b788d4b17a738897cc66a515b29571658bcc00dddd6fb5db16a4bcb"),
    ]
)

