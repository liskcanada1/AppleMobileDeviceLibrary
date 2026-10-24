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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.809B84BC-993B-4791-A48C-860E679AC79B/libimobiledevice.xcframework.zip", checksum: "6b644674fc7b516b7e5746645f064c743b0002b7288f2f1c490081f1347e8196"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.809B84BC-993B-4791-A48C-860E679AC79B/libimobiledevice_glue.xcframework.zip", checksum: "db7c779df9ad4129b74efadb296e18a1580b94bca24aab7907928823d8c3cf25"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.809B84BC-993B-4791-A48C-860E679AC79B/libplist.xcframework.zip", checksum: "1faf1ea4aeb8be7d5bc6a864a984a96802f54f2b051e610666f5bc9cd64998b2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.809B84BC-993B-4791-A48C-860E679AC79B/libtatsu.xcframework.zip", checksum: "f4cd1d824ed69913b6f5d55f4adb29959ad82b2d44b74b21749544f847574cbb"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.809B84BC-993B-4791-A48C-860E679AC79B/libusbmuxd.xcframework.zip", checksum: "0b672f13b9fc4fdb78d76c4ae55e393ee17381c7bad6b25e1f7e09af76b96356"),
    ]
)

