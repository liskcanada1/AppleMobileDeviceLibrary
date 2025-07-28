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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9EB0C493-64C7-462B-B6F9-3201C218AA9A/libimobiledevice.xcframework.zip", checksum: "b4ed4504744305b01b79fe8a505699f0f2ba346bd8edee2bbe83a36de15ee6a3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9EB0C493-64C7-462B-B6F9-3201C218AA9A/libimobiledevice_glue.xcframework.zip", checksum: "3ca7e0a6c8dec30e38d9c2fce0b7d12bdddd5ce48c7a01209c277759fffb9d5c"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9EB0C493-64C7-462B-B6F9-3201C218AA9A/libplist.xcframework.zip", checksum: "5f20fd993569f387924a1f93232d7efde7912292e3ec31fef85044fef9bf94d2"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9EB0C493-64C7-462B-B6F9-3201C218AA9A/libtatsu.xcframework.zip", checksum: "64f2efdbbf105560cedac8b72d8442d7d05f8a8e87ad6fb275387a29ade5b299"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9EB0C493-64C7-462B-B6F9-3201C218AA9A/libusbmuxd.xcframework.zip", checksum: "272ecb08ddeb59a8f8706205167e2c50e8ada7672da26c9468df27b7963e1b3d"),
    ]
)

