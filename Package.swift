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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.43643108-C69D-4CDB-9D7C-090F7A6E2018/libimobiledevice.xcframework.zip", checksum: "ec3583e2265114e3f28685629e17879e5cfdf28f60a4d6abc88beb1ee4a192b5"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.43643108-C69D-4CDB-9D7C-090F7A6E2018/libimobiledevice_glue.xcframework.zip", checksum: "341d0803835e6b53d59648b5fcd05c1d8cccafe9fd61b7325d477ed45d004b2d"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.43643108-C69D-4CDB-9D7C-090F7A6E2018/libplist.xcframework.zip", checksum: "adbfc4239086910b87a20794c85e7becc4cba0a6231c0990c45a53fec4ddcf45"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.43643108-C69D-4CDB-9D7C-090F7A6E2018/libtatsu.xcframework.zip", checksum: "f0c420f3961d4b4c6e0f1181793cfcb954b104e589779a540e6bc2138f397891"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.43643108-C69D-4CDB-9D7C-090F7A6E2018/libusbmuxd.xcframework.zip", checksum: "de6cbae8c16b67741d61e3dd6228706908a81b08e6f38d3850e6098fd6e2fb3a"),
    ]
)

