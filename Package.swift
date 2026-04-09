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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EA2BD33B-973B-43F1-97A6-0F09799B7A23/libimobiledevice.xcframework.zip", checksum: "0adb8c939285fad422a4195fd629d64ef36c6563d351233fe6bae7a1b25e2b6e"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EA2BD33B-973B-43F1-97A6-0F09799B7A23/libimobiledevice_glue.xcframework.zip", checksum: "13012576d2e7c4c344fff1170db895d2d939a092eef144a4fd6098476611b62a"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EA2BD33B-973B-43F1-97A6-0F09799B7A23/libplist.xcframework.zip", checksum: "e0f79eb271466ca6b40d33aa8352f80ff8e86fc188b8d6145155e503d05c7361"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EA2BD33B-973B-43F1-97A6-0F09799B7A23/libtatsu.xcframework.zip", checksum: "54118e6ebee675da06142965b11030bd787cc6ddfe80c5642b112190bbad9f24"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.EA2BD33B-973B-43F1-97A6-0F09799B7A23/libusbmuxd.xcframework.zip", checksum: "2f7493347a59dee22fdc5b5fd5cb1eefa2ff677250a00e4c53ee2d8736b7951b"),
    ]
)

