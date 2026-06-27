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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F6378F7F-4A30-4709-80C3-963FF7DB09A0/libimobiledevice.xcframework.zip", checksum: "3b15e47fda964ce5bf8da23c69c7d7f499e203d771cef5c942069db4d3a56021"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F6378F7F-4A30-4709-80C3-963FF7DB09A0/libimobiledevice_glue.xcframework.zip", checksum: "4e8bcd187a30e89c0965d1e6332c8bddbbcb571277d5f03434bfc2ab029e39fd"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F6378F7F-4A30-4709-80C3-963FF7DB09A0/libplist.xcframework.zip", checksum: "899b7df821ccdae77a08bbb29fb5146d740a6bbcd26fca51766a95f302dba44c"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F6378F7F-4A30-4709-80C3-963FF7DB09A0/libtatsu.xcframework.zip", checksum: "d6121cf6b13982527f67e279c175e59ba5b07e09be700a89bf7bb2254dc18221"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.F6378F7F-4A30-4709-80C3-963FF7DB09A0/libusbmuxd.xcframework.zip", checksum: "a0c9f074e3fd06cfff2cc63da80986bb7f6cd0b826b4596cbe58950c2aa735b8"),
    ]
)

