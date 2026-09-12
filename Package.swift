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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9890E116-B21D-4F6F-BFB8-084A188128B6/libimobiledevice.xcframework.zip", checksum: "a2b016af23d9a3e6fbf2a94dae8c037942ffdbd1672e6f31547cbb7314a73121"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9890E116-B21D-4F6F-BFB8-084A188128B6/libimobiledevice_glue.xcframework.zip", checksum: "5f50acb3203cbda30e452935e80ed9ab2c5f167f2ad474da1685307173c67892"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9890E116-B21D-4F6F-BFB8-084A188128B6/libplist.xcframework.zip", checksum: "40425015bfc14e53f864fae136c1bb647499abb75af089ee3333163f26402939"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9890E116-B21D-4F6F-BFB8-084A188128B6/libtatsu.xcframework.zip", checksum: "cd5278b575ad7457ce9bc469a611cc3810f08d6c915f85df8ef51c7b4ce8669c"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.9890E116-B21D-4F6F-BFB8-084A188128B6/libusbmuxd.xcframework.zip", checksum: "c3e533e886119750fdfaebe47d0a0795ad1b1d0c455ad07a93f8a508fad9c9fd"),
    ]
)

