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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.22137FC3-042A-4633-BF0D-374E849CB9C2/libimobiledevice.xcframework.zip", checksum: "247a81575d7992bae1fa4d972540a55476f246810a361f867f5949784b4ba184"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.22137FC3-042A-4633-BF0D-374E849CB9C2/libimobiledevice_glue.xcframework.zip", checksum: "a1c3ac091ddaa402e239e1f133f006a3ebd1a77b9cfd6f55780ff70b67d214a8"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.22137FC3-042A-4633-BF0D-374E849CB9C2/libplist.xcframework.zip", checksum: "020b7ac19f823a0d4f3f2055df7ef6297f0aaa954b8749dac21844984dbe3e98"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.22137FC3-042A-4633-BF0D-374E849CB9C2/libtatsu.xcframework.zip", checksum: "5b678417fa2f595f39400eb9c1eec112efb82df0031cbef4917c714a9e53a815"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.22137FC3-042A-4633-BF0D-374E849CB9C2/libusbmuxd.xcframework.zip", checksum: "d14e4424d47feaf338a22f044453d97ae00ea1e6d30c179564b1a8782a0498cb"),
    ]
)

