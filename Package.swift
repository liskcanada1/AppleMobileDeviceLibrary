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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.52C97958-50B0-495A-AB70-01A282C6F9D5/libimobiledevice.xcframework.zip", checksum: "3abe9436e56f4b5bf24dffe2ef5a7b1e9c7a3362290601d744f6216954dad7b3"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.52C97958-50B0-495A-AB70-01A282C6F9D5/libimobiledevice_glue.xcframework.zip", checksum: "4394586db23f159705290b789156ae0b172b392b4fee000db12893f7cbc78b36"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.52C97958-50B0-495A-AB70-01A282C6F9D5/libplist.xcframework.zip", checksum: "7bf11027ec46103ca80afbbab104b43f733a3d15696876ec536357bc636664ea"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.52C97958-50B0-495A-AB70-01A282C6F9D5/libtatsu.xcframework.zip", checksum: "02b2276d4f22d3556f4fdb86850f30e1f2a15203cf62f9d7fe9cb23ab761425c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.52C97958-50B0-495A-AB70-01A282C6F9D5/libusbmuxd.xcframework.zip", checksum: "d475203e390a20de0840e5b8178daec9545c688411c1c97cbe00a7b58445b247"),
    ]
)

