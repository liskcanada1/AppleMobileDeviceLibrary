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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.84203A32-4AD1-4584-ABCB-D5BD99A8A75B/libimobiledevice.xcframework.zip", checksum: "7f435bdf7707f5636231cd59b532df68b7e805a7569f2b93707981abccf53556"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.84203A32-4AD1-4584-ABCB-D5BD99A8A75B/libimobiledevice_glue.xcframework.zip", checksum: "ed2594915aca8dbfac87914e1837e93c30809b50cfa3f3f6b94484d872f22e38"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.84203A32-4AD1-4584-ABCB-D5BD99A8A75B/libplist.xcframework.zip", checksum: "53ffc4854ee21924a06ed28b06bbb5528057113878dc3861f702ed670328bf9d"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.84203A32-4AD1-4584-ABCB-D5BD99A8A75B/libtatsu.xcframework.zip", checksum: "77ea9f1853ffee1f2dc67dcf693810ac8a944bed4b49d35814051dcebae62663"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.84203A32-4AD1-4584-ABCB-D5BD99A8A75B/libusbmuxd.xcframework.zip", checksum: "d50be86838d2efe0d0df89fa7d46e56ec49801b047f4d5fccc447e24dc01d54e"),
    ]
)

