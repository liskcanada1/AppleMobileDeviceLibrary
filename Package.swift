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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F33C5DF3-FB4A-45D0-A912-5B6ED7A7B5D1/libimobiledevice.xcframework.zip", checksum: "fddc1aa4618e410eaac69c2c6d3a40ac56e5da1898c72f31920b9c2598a458fd"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F33C5DF3-FB4A-45D0-A912-5B6ED7A7B5D1/libimobiledevice_glue.xcframework.zip", checksum: "0df7fbb67f8425dc06252e6f23cbc63c12ee7f6ebe8313243927cf812987288b"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F33C5DF3-FB4A-45D0-A912-5B6ED7A7B5D1/libplist.xcframework.zip", checksum: "4a414dccf619411de2c71fb39c27c0c872d9e514c22f455e4a53508207665a91"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F33C5DF3-FB4A-45D0-A912-5B6ED7A7B5D1/libtatsu.xcframework.zip", checksum: "5804009603180e08cb31eaa6293010918d996d879f21d5c167d55403619ce295"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F33C5DF3-FB4A-45D0-A912-5B6ED7A7B5D1/libusbmuxd.xcframework.zip", checksum: "14118a061f6eeb7c8fd330af94db1398dbf136077986fe5765a4352908d72983"),
    ]
)

