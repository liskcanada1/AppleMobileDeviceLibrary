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
        .binaryTarget(name: "libimobiledevice", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FEDF44CB-8FC7-46FF-91FD-356321D7C391/libimobiledevice.xcframework.zip", checksum: "bf1bfa3bc0950e48f69fbe11e22f2dcdea98a82da3df5447e94f85886e76e53c"),
        .binaryTarget(name: "libimobiledevice_glue", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FEDF44CB-8FC7-46FF-91FD-356321D7C391/libimobiledevice_glue.xcframework.zip", checksum: "29891bab082edebbea846c27aa2fb3ac22227cebf832749b2ba45d819017504f"),
        .binaryTarget(name: "libplist", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FEDF44CB-8FC7-46FF-91FD-356321D7C391/libplist.xcframework.zip", checksum: "51cc5429dc8bb00ca80597a1a1ddae5cb53ab2aab4b50c61dcf7f57ddfbfd8e3"),
        .binaryTarget(name: "libtatsu", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FEDF44CB-8FC7-46FF-91FD-356321D7C391/libtatsu.xcframework.zip", checksum: "063301f55846d40ebf2725ecede76a97118574bb52dba4d1635b0c0e8072399b"),
        .binaryTarget(name: "libusbmuxd", url: "https://github.com/liskcanada1/AppleMobileDeviceLibrary/releases/download/storage.FEDF44CB-8FC7-46FF-91FD-356321D7C391/libusbmuxd.xcframework.zip", checksum: "80f23a3941380542de67be42d28f34f51149cb1d63c6248d9ecf9b6557b42471"),
    ]
)

