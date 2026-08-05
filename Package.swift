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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C3090654-BED5-4EF1-8471-CC7BAE4D335B/libimobiledevice.xcframework.zip", checksum: "0bab5cec2c667bf8a72769fa6b886be7cd975838e01a90bfaafc17648e00c3cb"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C3090654-BED5-4EF1-8471-CC7BAE4D335B/libimobiledevice_glue.xcframework.zip", checksum: "9606611466a4f4b2b5ca3eb2663c555aa5f674223932a46c5074b7548c95bbd9"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C3090654-BED5-4EF1-8471-CC7BAE4D335B/libplist.xcframework.zip", checksum: "f5e07073a2fc6504f9af1262c11e607365a5d4d504bd9095d8e33b969ecca300"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C3090654-BED5-4EF1-8471-CC7BAE4D335B/libtatsu.xcframework.zip", checksum: "224d9ff6f61610f0b21787a6ccc612690bd9306446e60bdefa35da87c2766e66"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.C3090654-BED5-4EF1-8471-CC7BAE4D335B/libusbmuxd.xcframework.zip", checksum: "675c0bdd7e9e8e7594b6e09c2c827e1c09b940e89ae0c4064b3aa0feaadd2df2"),
    ]
)

