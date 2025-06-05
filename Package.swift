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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9EFF16EC-6858-49E7-BF34-CD2236C28D63/libimobiledevice.xcframework.zip", checksum: "9d6249b3a7d04b39c659906520e836c9bce63a7ce26e5e1509474d458a2ae8b5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9EFF16EC-6858-49E7-BF34-CD2236C28D63/libimobiledevice_glue.xcframework.zip", checksum: "ab2fcab6333d7160f258a8406a065ab1a9e5abd8acef4df0d523b2e6a2dc88e3"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9EFF16EC-6858-49E7-BF34-CD2236C28D63/libplist.xcframework.zip", checksum: "4c0a590549eead4a828a1ca736b230d2bde0b12f232a24b154cb2b58c47c3987"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9EFF16EC-6858-49E7-BF34-CD2236C28D63/libtatsu.xcframework.zip", checksum: "d8f92286145e99d017abf4b519a9896e9cddd6aee86614929a38e5d5295b371a"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9EFF16EC-6858-49E7-BF34-CD2236C28D63/libusbmuxd.xcframework.zip", checksum: "146541eb5e75ce2644812625c32556ba9fc459424d8a62fe26959d9cfe3f5088"),
    ]
)

