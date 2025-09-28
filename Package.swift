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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1F355D37-35D9-4BB2-8CE4-D5D593329D55/libimobiledevice.xcframework.zip", checksum: "a526f3d6c6ccb9b638ea003137ec619ad9f1aaa0d6324ae47ba616c0ba30e362"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1F355D37-35D9-4BB2-8CE4-D5D593329D55/libimobiledevice_glue.xcframework.zip", checksum: "b2f9789265232d5c39e5e7fcb9fb2cd5a970d4a38859f93220fd6b93a5bf0326"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1F355D37-35D9-4BB2-8CE4-D5D593329D55/libplist.xcframework.zip", checksum: "b850a4349dbca1cf11590c7beb6c849b4d60eee8f1d4e1c2b0e85c77561dfed5"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1F355D37-35D9-4BB2-8CE4-D5D593329D55/libtatsu.xcframework.zip", checksum: "793b357cd7e83a483997326fc29dcff3b4a12de852b3bf665400d81270feb839"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.1F355D37-35D9-4BB2-8CE4-D5D593329D55/libusbmuxd.xcframework.zip", checksum: "40476b07fbcce4832ab8bf92fe41e4ac5a09174be4d67bcddcdaf8c0a5a8164c"),
    ]
)

